#!/usr/bin/perl 
use strict;
use warnings;

use Path::Class; 

print "leeminuk is dddkdkdk \r\n";

my $dir = dir('../webproject','upload'); #foo/bar 

#Iterate over the content of foo/bar 

while(my $file = $dir->next){

	next if $file->is_dir(); 
		print $file->stringify . "\n";	
}

