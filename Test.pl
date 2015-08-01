#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Test.pl
#
#        USAGE: ./Test.pl  
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
#      CREATED: 2015/03/20 00시 11분 15초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $str = "APPLE apple Apple";

#대문자 
$str = uc($str); 
print $str, "\n";

#소문자
$str = lc($str);
print $str, "\n";

while(<STDIN>){
chomp;
print $_;

}


