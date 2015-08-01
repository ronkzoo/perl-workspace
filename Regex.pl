#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Regex.pl
#
#        USAGE: ./Regex.pl  
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
#      CREATED: 2015/03/08 04시 16분 46초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Benchmark;

my $count = 5000000; 

sub One {
	my $data = 'for bar baz';
	$data = uc $data;

}

## We'll test each one, with simple labels 
my @machines_os = ("OpenBSD", "Windows", "Linux", "Unix");

foreach (@machines_os){
	s/Windows/Linux/;	
}


exit;






