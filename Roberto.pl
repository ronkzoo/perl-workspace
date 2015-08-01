#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Roberto.pl
#
#        USAGE: ./Roberto.pl  
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
#      CREATED: 2015/03/08 04시 10분 32초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

package Szywiecki; 

my $Robert = "the boss"; 

sub terminate {

	my $name = shift;
	# the following line was updated on 
	print "$Robert has canned ${name}'s sorry butt\n  ";
}

terminate("leeminuk");

while(<>){
	chomp;
	if(/[en]/) {
		print "Matched: |$' <$&>$'| \n";
	} else {
		print "No match. \n";
	}
	

}



