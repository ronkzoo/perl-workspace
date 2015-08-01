#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: tt.pl
#
#        USAGE: ./tt.pl  
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
#      CREATED: 2015/05/14 22시 58분 57초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

while(<>){

	chomp $_;
	my @a=(0,1,0,1);
	my @n=split("",%_); 
	my (@r,$p); 
	for my $se ('00','01','10','11'){
		my $re = $se;
		$re =~s/(.)(.)$/$1$2$a[$1+$2+$n[$_]]/ for(0..$#n); 
		push @r, $re if $re=~s/^(.)(.)(.+)\1\2$/$2$3$1/;
	}

	if($r[1]){
		$p='Multiple';
	} elsif($r[0]){
		$p=$r[0];
	} else { 
		$p = 'no';
	}

	print "$p\n";
}

