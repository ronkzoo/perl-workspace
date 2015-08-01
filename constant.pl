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
# 상수 하나씩 정의 
use constant STACK_SIZE => 10;
# 여러 개의 상수를 한꺼번에 정의하기 
use constant {
	SEC => 0, 
	MIN => 1, 
	HOUR => 2, 
	MDAY => 3, 
	MON  => 4, 
	YEAR => 5,
	WDAY => 6
};

# 상수의 값이 리스트인 경우 
 use constant WEEDAYS => qw(Sunday Monday Tuesday Wednesday Thursday Friday);

print STACK_SIZE, "\n";
print SEC, "\n";
print join(",",WEEDAYS),"\n";
  














