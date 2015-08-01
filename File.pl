#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: File.pl
#
#        USAGE: ./File.pl  
#
#  DESCRIPTION: hello leeminuk 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/03/08 03시 55분 50초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use Path::Class; 
use autodie; #die if problem reading or writing a file 

my $dir = dir("../webproject");

my $file = $dir->file("file.txt"); 

#Get a file_handle (IO::File object) you can write to 
my $file_handle = $file->openw(); 

my @list = ('a', 'list', 'of', 'lines'); 

foreach my $line (@list) {
	#Add the line to the file 
	$file_handle->print($line . "\n");
}

###### ##### Appending to a file ##### ###### 

# As above but use open ('>>') instead of openw() 
#my $file_handle = $file->open('>>');

##### ###### Reading a file ######## 













