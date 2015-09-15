"""
Author: Logan Esch
Date: 27 August 2015
CSCI 460: Operating Systems, Assignment 1
"""

from collections import deque
from Queue import PriorityQueue
import argparse
import random

class Core:
	"""	class to represent a core on a processor """
	def __init__(self, num):
		self.number = num # core number of the processor.
		self.job = None # currently running job of the processor.
		self.queue = deque() # queue of jobs for the processor to run. 

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
				self.job = None

		else: #if the core doesn't have a job it's working on.
			#check if the processor queue has job for it to run next. 
			if self.queue:
				# there is a job, load it and wait for the next cycle (the 1ms penelty).
				self.job = self.queue.popleft()
				self.job.begin_time = time
			else:
				# there is no job to perform next, so idle. 
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

class Processor:
	"""
	class to represent a processor containing multiple Cores, a clock, and a job queue.
	"""
	def __init__(self, jobset):
		
		self.clock = 0 # system clock, represented by an int, each 'tick' will be 1ms in simulation-land. 
		self.jobset = jobset
		self.next_job_index = 0

		# Core Initlization
		core_count = (1303 % 3) + 2 #student id mod 3, plus 2
		self.cores = [] #declare a list of cores.
		#loop through and initalize all cores
		for number in range(0, core_count - 1): 
			cores.append(Core(number))

		#job buffer for new jobs as they come in
		self.jobs = deque()

	def update(self):
		"""perform all functions of the processor."""
		# update the clock.
		self.clock += 1

		#pull in new jobs from the jobset.
		if next_job_index < len(jobset):
			#pull the next job off the jobset (ASSUMES JOBS ORDERED BY ARIVAL TIME)
			next_job = self.jobset[self.next_job_index]
			# if it's time to start the next job, put the job in the job queue (like it arived)
			if next_job.arrival_time == time:
				self.jobs.append(next_job)
				self.next_job_index += 1 # update the index

		# schedule the arived jobs.
		scheduler.schedule()

		# have the cores do 'work'. 
		for core in self.cores:
			core.work(self.clock)

class RoundRobinScheduler:
	"""
	Round robin job scheduler, takes jobs and puts them imediatly on the next core in a circular manner.
	"""

	next_core = 0 # counter for the next core to schedule a job on. 

	def __init__(self, processor):
		self.processor = processor

	def schedule():
		#if the processor has jobs to be scheduled, put one into the core job queues. 
		if processor.jobs:
			processor.cores[next_core].queue.append(processor.jobs.popleft()) #enqueue the job on the next core

			# increment the next core to schedule. 
			next_core += 1
			if next_core >= processor.core_count:
				# if the counter is too high, reset it.  
				next_core = 0
		else: 
			pass

class ShortestJobNextScheduler:
	""" Send the shortest job to each core as the cores take in their jobs."""
	def __init__(self, processor):
		self.processor = processor
		self.priority_queue = PriorityQueue()

	def schedule():
		#check if there are new jobs in the processors buffer, if so prioritize them. 
		while processor.jobs:
			self.priority_queue.put(processor.jobs.popleft())

		#check if the cores need more jobs. 
		for core in processor.cores:
			if not core.jobs:
				core.jobs.append(self.priority_queue.get())


"""
Driver for the program.
"""
def main():

	parser = argparse.ArgumentParser()
	parser.add_argument("-s", "--scheduler", action='store_true', help="the scheduler to use in the simulation, rr or sjn")
	parser.add_argument("-r","--randjobset", action='store_true', help="use random jobs instead of default set")

	args = parser.parse_args()
	

	if args.randjobset:
		jobset = random_jobset_generator()
	else:
		jobset = default_jobset()

	if args.scheduler == 'sjn':
		scheduler = ShortestJobNextScheduler(Processor())
	elif args.scheduler == 'rr':
		scheduler = RoundRobinScheduler(Processor())


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

	jobset.append(Job(1,4,9))
	jobset.append(Job(2,15,2))
	jobset.append(Job(3,18,16))
	jobset.append(Job(4,20,3))
	jobset.append(Job(5,26,29))
	jobset.append(Job(6,29,198))
	jobset.append(Job(7,35,7))
	jobset.append(Job(8,45,170))
	jobset.append(Job(9,57,180))
	jobset.append(Job(10,83,178))
	jobset.append(Job(11,88,73))
	jobset.append(Job(12,95,8))

	return jobset


if __name__ == "__main__":
	main()
