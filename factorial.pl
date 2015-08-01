#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: factorial.pl
#
#        USAGE: ./factorial.pl  
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
#      CREATED: 2015/05/24 23시 22분 14초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $var = 0;
sub fac {

	print "argument value : ", $_[0], "\n";

	if($_[0] <= 1) {
		return 1;
	} else {
		return $_[0] * fac($_[0] - 1) ;
	}

}

$var = fac(6);
print "var::: ", $var;


