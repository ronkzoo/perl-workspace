#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Recursive.pl
#
#        USAGE: ./Recursive.pl  
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
#      CREATED: 2015/03/21 18시 25분 56초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $t = time(); 
my $n = 9; 
my $len = length($t);

print "============== \n";
print "time : ", $t , " \n";
print "len : ", $len , "\n";
print "============== ", "\n";

my $num;

$t = 'baaaaaaar';
$t =~ /ba+/;
print $&, "\n";
$t =~ /ba{2,5}/;
print $&, "\n";





