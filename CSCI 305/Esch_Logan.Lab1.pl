######################################### 	
#    CSCI 305 - Programming Lab #1		
#										
#  Logan Esch,			
#  logan.esch@msu.montana.edu			
#										
#########################################

# initial welcome text.
my $name = "Logan Esch";
print "CSCI 305 Lab 1 submitted by $name \n\n";
print "Running... please wait.\n\n";

# Checks for the argument, fail if none given
if($#ARGV != 0) {
    print STDERR "You must specify the file name as the argument.\n";
    exit 4;
}

# Opens the file and assign it to handle INFILE
open(INFILE, $ARGV[0]) or die "Cannot open $ARGV[0]: $!.\n";


#VARIABLE DEFINITIONS

#separation token.
$sep = "<SEP>";
#holder of line of song.
$line = "";
#end result title.
$title;
#counter variable for number of titles. 
$count = 0;

#Hash of Hashes to hold counts
%HoH = ();


#This loops through each line of the file
while($line = <INFILE>) {

	#Separate out just the title.
	$line =~/(?:.*?$sep(.+)){3}/;
	$title = $1;
	
	#Filter out superfluous text. 
	$title =~s/\(.+/ /g;
	$title =~s/\[.+/ /g;
	$title =~s/\{.+/ /g;
	$title =~s/\\.+/ /g;
	$title =~s/\/.+/ /g;
	$title =~s/\_.+/ /g;
	$title =~s/\-.+/ /g;
	$title =~s/\:.+/ /g;
	$title =~s/\".+/ /g;
	$title =~s/\`.+/ /g;
	$title =~s/\+.+/ /g;
	$title =~s/\=.+/ /g;
	$title =~s/\*.+/ /g;
	$title =~s/feat\..+/ /g;
	
	#eliminate punctuation.
	$title =~s/\?//g;
	$title =~s/\¿//g;
	$title =~s/\!//g;
	$title =~s/\¡//g;
	$title =~s/\.//g;
	$title =~s/\;//g;
	$title =~s/\&//g;
	$title =~s/\$//g;
	$title =~s/\@//g;
	$title =~s/\%//g;
	$title =~s/\#//g;
	$title =~s/\|//g;
	
	#make the title lower case.
	$title = lc $title;
	
	#filter out common words at start of lines.
	$title =~s/^a +//;
	$title =~s/^an +//;
	$title =~s/^and +//;
	$title =~s/^by +//;
	$title =~s/^for +//;
	$title =~s/^from +//;
	$title =~s/^in +//;
	$title =~s/^of +//;
	$title =~s/^on +//;
	$title =~s/^or +//;
	$title =~s/^out +//;
	$title =~s/^the +//;
	$title =~s/^to +//;
	$title =~s/^with +//;
	
	#filter out common words.
	$title =~s/ +a +/ /g;
	$title =~s/ +an +/ /g;
	$title =~s/ +and +/ /g;
	$title =~s/ +by +/ /g;
	$title =~s/ +for +/ /g;
	$title =~s/ +from +/ /g;
	$title =~s/ +in +/ /g;
	$title =~s/ +of +/ /g;
	$title =~s/ +on +/ /g;
	$title =~s/ +or +/ /g;
	$title =~s/ +out +/ /g;
	$title =~s/ +the +/ /g;
	$title =~s/ +to +/ /g;
	$title =~s/ +with +/ /g;	
	
	#filter out common words at end of lines.
	$title =~s/ +a$//;
	$title =~s/ +an$//;
	$title =~s/ +and$//;
	$title =~s/ +by$//;
	$title =~s/ +for$//;
	$title =~s/ +from$//;
	$title =~s/ +in$//;
	$title =~s/ +of$//;
	$title =~s/ +on$//;
	$title =~s/ +or$//;
	$title =~s/ +out$//;
	$title =~s/ +the$//;
	$title =~s/ +to$//;
	$title =~s/ +with$//;
	
	#filter out common words at start of lines again (positioning may have changed).
	$title =~s/^a +//;
	$title =~s/^an +//;
	$title =~s/^and +//;
	$title =~s/^by +//;
	$title =~s/^for +//;
	$title =~s/^from +//;
	$title =~s/^in +//;
	$title =~s/^of +//;
	$title =~s/^on +//;
	$title =~s/^or +//;
	$title =~s/^out +//;
	$title =~s/^the +//;
	$title =~s/^to +//;
	$title =~s/^with +//;
	
	#filter out common words again (positioning may have changed).
	$title =~s/ +a +/ /g;
	$title =~s/ +an +/ /g;
	$title =~s/ +and +/ /g;
	$title =~s/ +by +/ /g;
	$title =~s/ +for +/ /g;
	$title =~s/ +from +/ /g;
	$title =~s/ +in +/ /g;
	$title =~s/ +of +/ /g;
	$title =~s/ +on +/ /g;
	$title =~s/ +or +/ /g;
	$title =~s/ +out +/ /g;
	$title =~s/ +the +/ /g;
	$title =~s/ +to +/ /g;
	$title =~s/ +with +/ /g;	
	
	#filter out common words at end of lines again (positioning may have changed).
	$title =~s/ +a$//;
	$title =~s/ +an$//;
	$title =~s/ +and$//;
	$title =~s/ +by$//;
	$title =~s/ +for$//;
	$title =~s/ +from$//;
	$title =~s/ +in$//;
	$title =~s/ +of$//;
	$title =~s/ +on$//;
	$title =~s/ +or$//;
	$title =~s/ +out$//;
	$title =~s/ +the$//;
	$title =~s/ +to$//;
	$title =~s/ +with$//;
	
	#skip songs with non-English characters. 
	$_ = $title;
	if(/[^\w\s\']/){
		next;
	}else{
		#here is the valid title. 

		#temp variables to pull out the first and second words from the title. 
		$firstWord, $secondWord;
		#split the title into individual words.
		@words = split(/ /, $title);
		#set the first word to the first word in the title.
		$firstWord = shift(@words);
		#loop through the new array and add to HoH (hash of hashes).
		foreach $secondWord (@words){
			$HoH{$firstWord}{$secondWord} += 1;
			$firstWord = $secondWord;
		}		
		#print $title."\n";
		$count = $count + 1;
		
	}
}

# Close the file handle
close INFILE; 

#Hash of Hashes has been built with bigram counts.

#spit out answers to common questions.
print $line;
print "Count: ".$count."\n";
$happy = "happy";
$sad = "sad";
$computer = "computer";
$happyFollower = mcw($happy);
$sadFollower = mcw($sad);
$computerFollower = mcw($computer); 
$numComputerFollowers = numberWordsFollowing($computer);
print "The most common word to follow \"happy\" is: ".$happyFollower.".\n";
print "The most common word to follow \"sad\" is: ".$sadFollower.".\n";
print "Unique words following \"computer\": ".$numComputerFollowers.".\n";
print "The most common word to follow \"computer\" is: ".$computerFollower.".\n";
print "\"".$computerFollower."\" follows \"computer\": ".$HoH{$computer}{$computerFollower}." times.\n"; 
print "File parsed. Bigram model built.\n\n";


# User control loop
print "Enter a word [Enter 'q' to quit]: ";
$input = <STDIN>;
chomp($input);
print "\n";	
while ($input ne "q"){
	print titleBuilder($input)."\n";
	print "Enter a word [Enter 'q' to quit]: ";
	$input = <STDIN>;
	chomp($input);
	print "\n";	
}




#most common word function, returns the word with the largest count to follow a given word.
#argument accepted on $_[0], should be a string.
#returns a string or empty if none is found.
#tied words are resolved with a coin toss.
sub mcw{
	#print "finding follower of: ".$_[0]."\n";
	my $biggestCountSoFar = 0;
	my $mostCommonWordSoFar;
	my $word = $_[0];
	#check if word exists.
	if (exists $HoH{$word}){
		#loop through all the bigrams that follow the given word checking their counts.
		foreach my $follower (keys $HoH{$word}){
		#check for ties. 
			if($HoH{$word}{$follower} == $biggestCountSoFar){
				#tie found, flip coin.
				if(rand(1) >= .5){
					#swap values.
					$mostCommonWordSoFar = $follower;
				}
			
			}elsif($HoH{$word}{$follower} > $biggestCountSoFar){
				#word occurs more times, make it the most common so far. 
				$biggestCountSoFar = $HoH{$word}{$follower};
				$mostCommonWordSoFar = $follower;
			}
		}
	}
	return $mostCommonWordSoFar;
}

#title builder function, takes a string and returns the most likely title built with that word as a seed.
#accepts a string as an argument on $_[0].
#returns a string up to 20 words long by selecting the most common word to follow the previous word added to the string.
#if no words follow the previous word building stops and the string is returned.
sub titleBuilder{
	my $nextWord = $_[0];
	my $titleString = $nextWord;
	my $counter = 0;
	#loop until title is built
	while($counter < 20){
		#get the most common word to follow the previous word.
		$nextWord = mcw($nextWord);
		#if the most common word is empty, return.
		if($nextWord =~ //)
		{$counter = 20;}else{
		#otherwise append the most common word to the string and continue.
		$titleString = $titleString." ".$nextWord;
		$counter += 1;
		}
	}	
	return $titleString;
}

#number of words following function, returns the number of bigrams with the lead word equal to the given word. 
#accepts a string as an argument on $_[0].
#returns an integer count of the bigrams starting with the given word. 
sub numberWordsFollowing{
	my $word = $_[0];
	my $numFollowers = 0;
	if (exists $HoH{$word}){
		foreach my $follower (keys $HoH{$word}){
			$numFollowers +=1;
		}
	}
	return $numFollowers;
}
	



