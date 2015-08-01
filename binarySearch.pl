#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: binarySearch.pl
#
#        USAGE: ./binarySearch.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/06/10 19시 23분 43초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my @array;
my $low = 0;
my $mid;
my $found_key = 0;
my $num;
my $key = 5;
my $index;

@array = (5,10,30,4,-3,18,101,2001,46,23);
@array = sort {$a <=> $b} @array;
my $high = $#array; 

#my $rec  = join(',',@array);

#print "size",$#array,"\n";
#-3,4,5,10,18,23,30,46,101,2001
print "@array","\r\n";
print "key : $key row : $low  high : $high", "\r\n";

while(($low <= $high) && !$found_key){           

	$mid = ($low + $high) / 2;                   

	if($key == $array[$mid]){                   #  vim Editor forever
		$found_key = 1;                         #  vim Editor i love you !!!!!!
		$index = int($mid);                     #  
	} elsif($key < $array[$mid]){                             
		$high = $mid;	
	} else {
		$low = $mid + 1; 
	}
}

if($found_key){
	print "$key is at position : $index \n";
} else {
	print "Sorry. I could not find: $key";
}








