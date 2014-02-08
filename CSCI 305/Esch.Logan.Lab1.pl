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
		
		#loop through the new array and add to HoH.
		
		
		print $title."\n";
		$count = $count + 1;
	}
}

# Close the file handle
close INFILE; 

# At this point (hopefully) you will have finished processing the song 
# title file and have populated your data structure of bigram counts.
print $line;
print $count;
print "File parsed. Bigram model built.\n\n";


# User control loop
print "Enter a word [Enter 'q' to quit]: ";
$input = <STDIN>;
chomp($input);
print "\n";	
while ($input ne "q"){
	# Replace these lines with some useful code
	print "Not yet implemented.  Goodbye.\n";
	$input = 'q';
}

# MORE OF YOUR CODE HERE....