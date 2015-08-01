#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: FileRead.pl
#
#        USAGE: ./FileRead.pl  
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
#      CREATED: 2015/03/08 04시 02분 25초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use Path::Class; 
use autodie; 

my $dir  = dir("../webproject");
my $file = $dir->file("file.txt");
my $content = $file->slurp(); 
my $file_handle = $file->openr(); 
while(my $line = $file_handle->getline()) {
	print $line;
}




