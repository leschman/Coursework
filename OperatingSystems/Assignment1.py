"""
Author: Logan Esch
Date: 27 August 2015
CSCI 460: Operating Systems, Assignment 1
"""

from collections import deque
from Queue import PriorityQueue
import argparse
import random
import math

class Core:
	"""	class to represent a core on a processor """
	def __init__(self, num):
		self.number = num # core number of the processor.
		self.job = None # currently running job of the processor.
		self.queue = deque() # queue of jobs for the processor to run.
		self.busy = False 

	def work(self, time):
		"""pretend to do work for 1ms"""
		#if the core has a job it is working on.
		if self.job:
			#work on the job.
			self.job.worked_on_time += 1
			#check if the job is completed
			if (self.job.worked_on_time == self.job.processing_time):
				#job is done, mark it as such and delete it. 
				self.job.finish_time = time
				self.job.turn_around = time - self.job.arrival_time
				print("Core {0} finished job {1} at time {2}, turn around time: {3}.".format(self.number, self.job.number, time, self.job.turn_around))
				self.job = None
				self.busy = False

		else: #if the core doesn't have a job it's working on.
			#check if the processor queue has job for it to run next. 
			if self.queue:
				# there is a job, load it and wait for the next cycle (the 1ms penelty).
				self.job = self.queue.popleft()
				self.job.begin_time = time
				print("Core {0} begining job {1} at time {2}.".format(self.number, self.job.number, time))
				self.busy = True
			else:
				# there is no job to perform next, so idle. 
				print("Core {0} is idle at time {1}.".format(self.number, time))
				pass

class Job:
	"""
	class to represent a job for the processor.
	"""
	def __init__(self, num, arrival_time, processing_time):
		self.number = num
		self.processing_time = processing_time
		self.worked_on_time = 0
		self.arrival_time = arrival_time
		self.begin_time = 0
		self.finish_time = 0
		self.turn_around = 0

	def __cmp__(self, other):
		return cmp(self.processing_time, other.processing_time)

class Processor:
	"""
	class to represent a processor containing multiple Cores, a clock, and a job queue.
	"""
	def __init__(self, jobset):
		
		self.clock = 0 # system clock, represented by an int, each 'tick' will be 1ms in simulation-land. 
		self.jobset = jobset
		self.next_job_index = 0
		self.scheduler = None
		self.all_scheduled = False

		# Core Initlization
		self.core_count = (1303 % 3) + 2 #student id mod 3, plus 2
		self.cores = [] #declare a list of cores.
		#loop through and initalize all cores
		for number in range(0, self.core_count): 
			self.cores.append(Core(number))

		#job buffer for new jobs as they come in
		self.jobs = deque()
		

	def update(self):
		"""perform all functions of the processor."""
		# update the clock.
		self.clock += 1

		# initialize busy flag to false to check if we are done working. 
		self.busy = False

		#pull in new jobs from the jobset.
		if not self.all_scheduled:
			while self.jobset[self.next_job_index].arrival_time <= self.clock:
				self.jobs.append(self.jobset[self.next_job_index])
				self.next_job_index += 1
				if self.next_job_index >= (len(self.jobset)):
					self.all_scheduled = True
					break

		# schedule the arived jobs.
		self.scheduler.schedule()

		# have the cores do 'work'. 
		for core in self.cores:
			core.work(self.clock)

			# check if the core is busy, if it is then the processor is.
			if core.busy:
				self.busy = True


class RoundRobinScheduler:
	"""
	Round robin job scheduler, takes jobs and puts them imediatly on the next core in a circular manner.
	"""

	def __init__(self, processor):
		self.processor = processor
		self.next_core = 0 # counter for the next core to schedule a job on.

	def schedule(self):
		#if the processor has jobs to be scheduled, put them into the core job queues. 
		while self.processor.jobs:
			job = self.processor.jobs.popleft()
			print "Enqueuing job {0} on core {1}.".format(job.number, self.next_core)
			self.processor.cores[self.next_core].queue.append(job) #enqueue the job on the next core

			# increment the next core to schedule. 
			self.next_core += 1
			if self.next_core >= self.processor.core_count:
				# if the counter is too high, reset it.  
				self.next_core = 0
		else: 
			pass

class ShortestJobNextScheduler:
	""" Send the shortest job to each core as the cores take in their jobs."""
	def __init__(self, processor):
		self.processor = processor
		self.priority_queue = PriorityQueue()

	def schedule(self):
		#check if there are new jobs in the processors buffer, if so prioritize them. 
		while self.processor.jobs:
			job = self.processor.jobs.popleft()
			print "Job {0} arived.".format(job.number)
			self.priority_queue.put(job)

		#check if the cores need more jobs. 
		for core in self.processor.cores:
			if not core.busy and not self.priority_queue.empty():
				job = self.priority_queue.get()
				print "Enqueuing job {0} on core {1}.".format(job.number, core.number)
				core.queue.append(job)


"""
Driver for the program.
"""
def main():

	#handle arguments. 
	parser = argparse.ArgumentParser()
	parser.add_argument("-s", "--scheduler", action='store_true', help="the scheduler to use in the simulation, rr or sjn")
	parser.add_argument("-r","--randjobset", action='store_true', help="use random jobs instead of default set")

	args = parser.parse_args()
	

	if args.randjobset:
		jobset = random_jobset_generator()
	else:
		jobset = default_jobset()

	#initialize the processor.
	processor = Processor(jobset)
	scheduler = RoundRobinScheduler(processor)	

	if args.scheduler:
		print "using new scheduler"
		scheduler = ShortestJobNextScheduler(processor)


	processor.scheduler = scheduler

	idle_count = 0
	while idle_count < 10:

		# have the processor run, equivilant of a clock tick. 
		processor.update()

		# if the processor is busy, reset the counter. otherwise increment it.
		# counter is to ensure all jobs have cleared the queues before we pull the plug.
		if processor.busy:
			idle_count = 0
		else:
			idle_count += 1

	# data collection
	minimum = 10000000000000 # if a job takes longer than this... something is horribly wrong
	maximum = -1
	summation = 0
	count = 0
	for job in jobset:

		# Capture the statistics.
		if job.turn_around < minimum:
			minimum = job.turn_around
		if job.turn_around > maximum:
			maximum = job.turn_around

		summation += job.turn_around
		count += 1

	average = summation / count

	sum_deviation_squared = 0

	for job in jobset:
		sum_deviation_squared += math.pow((job.turn_around - average), 2)

	stdev = math.sqrt(sum_deviation_squared/count)

	print("Min: {0}, Max: {1}, Avg: {2}, Std Dev: {3}".format(minimum, maximum, average, stdev))



def random_jobset_generator():
	"""
	generate a 1000 random jobs, each ariving 
	sequentially (at 1ms, 2ms, 3ms...) with work time between [1ms, 500ms].
	"""
	jobset = []
	for i in xrange(1000):
		jobset.append(Job(i,i, random.randint(1,500)))
	return jobset


def default_jobset():
	""" builds and returns the default jobset given in the assignment."""
	jobset = []

	jobset.append(Job(1,1,5))
	jobset.append(Job(2,1,4))
	jobset.append(Job(3,1,3))
	jobset.append(Job(4,1,2))
	jobset.append(Job(5,1,1))

	#jobset.append(Job(1,4,9))
	#jobset.append(Job(2,15,2))
	#jobset.append(Job(3,18,16))
	#jobset.append(Job(4,20,3))
	#jobset.append(Job(5,26,29))
	#jobset.append(Job(6,29,198))
	#jobset.append(Job(7,35,7))
	#jobset.append(Job(8,45,170))
	#jobset.append(Job(9,57,180))
	#jobset.append(Job(10,83,178))
	#jobset.append(Job(11,88,73))
	#jobset.append(Job(12,95,8))

	return jobset


if __name__ == "__main__":
	main()
