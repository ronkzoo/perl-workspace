#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Ex.pl
#
#        USAGE: ./Ex.pl  
#
#  DESCRIPTION: 
#		 예를 들어보자 
#	     소수점의 정수 5개가 주어지면 1,2,3,4,5 라는 숫자를 6개의 평균의 맞추는거지. 
#        경우의 수와 순열은 다른것 같다. 
#        
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/05/23 00시 38분 28초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use POSIX qw(ceil floor);

use List::Util qw(sum);
use Time::HiRes qw(usleep nanosleep);

my @aa = qw(1 1 1 1 1 1);
my $a  = 3.7;
my $index  = 0;
my $loopCnt=0;
my %temp;

while($loopCnt <= 30) {

	my $myAvg = sum(0,@aa) / scalar @aa; 
	$myAvg = sprintf "%.1f", $myAvg;

	print @aa;
	print " my avg : ",$myAvg , " ::: "; 
	print "  index : ",$index ,"\n";

	# 1000 microseconds
	#usleep(1000000);

	$index = int(++$loopCnt/5);
	$aa[$index]++;
	
	if($aa[$index] == 6) {
		$aa[$index] = 5;
	}


}









