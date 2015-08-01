#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: MergeSort.pl
#
#        USAGE: ./MergeSort.pl  
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
#      CREATED: 2015/05/18 19시 24분 48초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

sub merge_sort{
	my @x = @_; 

	return @x if @x < 2; 

	my $m = int @x /2 ;

	my @a = merge_sort(@x[0 .. $m - 1]);
	my @b = merge_sort(@x[$m .. $#x]);

	for (@x) {
		$_ = !@a ? shift @b
		   : !@b ? shift @a 
		   : $a[0] <= $b[0] ? shift @a
		   :       shift @b;

	}

	@x;


}

my @a = (4, 65, 2, -31, 0, 99, 83, 782,1);
print "배열의 크기 : $#a \n\n";
@a = merge_sort @a; 
print "@a \n";



