#!/usr/bin/perl
use strict;
use warnings;

use Net::DNS::Resolver; 

my $hostname = 'perl.org';
my $res = Net::DNS::Resolver->new(nameservers => [qw(10.5.0.1)],);
my $query = $res->search($hostname); 

print $query;

if($query){
	foreach my $rr ($query -> answer) {
		next unless $rr->type eq "A";
		print "Found an A record: ".$rr->address;

	}

}







