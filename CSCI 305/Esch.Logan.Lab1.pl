######################################### 	
#    CSCI 305 - Programming Lab #1		
#										
#  Logan Esch,			
#  logan.esch@msu.montana.edu			
#										
#########################################

# Replace the string value of the following variable with your names.
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
#counter variable. 
$count = 0;

#Hash of Hashes to hold counts
%HoH = ();


# This loops through each line of the file
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
	
	#filter out common words at start of lines.
	$title =~s/^a +//g;
	$title =~s/^an +//g;
	$title =~s/^and +//g;
	$title =~s/^by +//g;
	$title =~s/^for +//g;
	$title =~s/^from +//g;
	$title =~s/^in +//g;
	$title =~s/^of +//g;
	$title =~s/^on +//g;
	$title =~s/^or +//g;
	$title =~s/^out +//g;
	$title =~s/^the +//g;
	$title =~s/^to +//g;
	$title =~s/^with +//g;
	
	#filter out common words at end of lines.
	$title =~s/ +a$//g;
	$title =~s/ +an$//g;
	$title =~s/ +and$//g;
	$title =~s/ +by$//g;
	$title =~s/ +for$//g;
	$title =~s/ +from$//g;
	$title =~s/ +in$//g;
	$title =~s/ +of$//g;
	$title =~s/ +on$//g;
	$title =~s/ +or$//g;
	$title =~s/ +out$//g;
	$title =~s/ +the$//g;
	$title =~s/ +to$//g;
	$title =~s/ +with$//g;
	
	#skip songs with non-English characters. 
	$_ = $title;
	if(/[^\w\s\']/){
		next;
	}else{
		#here is the valid title. 
		$title = lc $title;
		#temp variables to pull out the first and second words from the title. 
		$firstWord, $secondWord;
		#split the title into individual words.
		@words = split(/ /, $title);
		#set the first word to the first word in the title.
		$firstWord = shift(@words);
		#loop through the new array and add to HoH.
		foreach $secondWord (@words){
			$HoH{$firstWord}{$secondWord} += 1;
			$firstWord = $secondWord;
		}		
		print $title."\n";
		$count = $count + 1;
		
	}
}

# Close the file handle
close INFILE; 

# At this point (hopefully) you will have finished processing the song 
# title file and have populated your data structure of bigram counts.
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

# MORE OF YOUR CODE HERE....


sub mcw{
	#print "finding follower of: ".$_[0]."\n";
	my $biggestCountSoFar = 0;
	my $mostCommonWordSoFar;
	my $word = $_[0];
	if (exists $HoH{$word}){
		foreach my $follower (keys $HoH{$word}){
		#check for ties. 
			if($HoH{$word}{$follower} == $biggestCountSoFar){
				#tie found, flip coin.
				if(rand(1) >= .5){
					#swap values.
					$mostCommonWordSoFar = $follower;
				}
			
			}elsif($HoH{$word}{$follower} > $biggestCountSoFar){
				$biggestCountSoFar = $HoH{$word}{$follower};
				$mostCommonWordSoFar = $follower;
			}
		}
	}
	return $mostCommonWordSoFar;
}

sub titleBuilder{
	my $nextWord = $_[0];
	my $titleString = $nextWord;
	my $counter = 0;
	while($counter < 20){
		$nextWord = mcw($nextWord);
		$titleString = $titleString." ".$nextWord;
		$counter += 1;
	}	
	return $titleString;
}
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
	



