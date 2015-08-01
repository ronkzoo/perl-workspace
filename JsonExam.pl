#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: JsonExam.pl
#
#        USAGE: ./JsonExam.pl  
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
#      CREATED: 2015/03/21 18시 05분 36초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON::XS;


my $json = '{
	"name":"Bob",
	"sex":"male",
	"addresss":{
		"city":"San Jose",
		"state":"California"
	},
	"friends":[
		{
			"name":"Alice",
			"age":"20"	
		},
		{
			"name":"Laura",
			"age":"23"
		}
		]
	}';

my $decoded = decode_json($json);

# This is a Perl example of parsing a JSON object. 
print "City = $decoded -> {'address'}{'city'} ";

# This is a Perl example of parsing a JSON array.
my @friends = @{$decoded->{'friends'}};

foreach my $f (@friends){
	print $f->{"name"} . "\n";
}
