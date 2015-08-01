#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Multiple.pl
#
#        USAGE: ./Multiple.pl  
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
#      CREATED: 2015/05/30 20시 43분 07초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $cnt = 0;
foreach (1..6) {
	my $a = $_;
	foreach (1..6){
		if(($a + $_) == 3 or ($a + $_) == 5) {
			print " value is ",$a," : " ,$_, "\n"; 	
		}
	}
}

