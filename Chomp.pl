#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Chomp.pl
#
#        USAGE: ./Chomp.pl  
#
#  DESCRIPTION: jj
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/03/20 00시 06분 59초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


foreach(<>){
	chomp;
	print "$_\n" unless $_{$_}++;
}





