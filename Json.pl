#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Json.pl
#
#        USAGE: ./Json.pl  
#
#  DESCRIPTION: jjjjjj
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/03/12 00시 13분 44초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use JSON::XS;

my $json = decode_json(join('',<>));
print $json->{"config"}->{"description"};





