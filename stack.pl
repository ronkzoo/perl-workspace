#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: stack.pl
#
#        USAGE: ./stack.pl  
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
#      CREATED: 2015/07/12 12시 19분 39초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use constant STACK_SIZE => 10;

my @stack;

push @stack, '1';
push @stack, '2';
push @stack, '3';
push @stack, '4';
push @stack, '5';
push @stack, '6';
push @stack, '7';

pop @stack;

print @stack;





