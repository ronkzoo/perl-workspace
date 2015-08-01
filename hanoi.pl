#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hanoi.pl
#
#        USAGE: ./hanoi.pl  
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
#      CREATED: 2015/07/09 20시 10분 42초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my @a ;
my @b = (1..4);
my @c ;

print "hanoi start-------", "\n";
print " b size : ", scalar @b, " \n";

# argument : 

=pod
	source to target
=cut

sub fac {
	my ($aa, $bb) = @_;
	my @aa = @$aa;
	my @bb = @$bb;
	my $arrSize = scalar @aa;	
	my $cSize   = scalar @c;
	
	if($arrSize == 1){
		# 마지막 남은 하나를 배열로 이동시킨다.  
		push(@c, pop(@aa));

	} else {

		push(@bb,pop(@aa));
		#1 to 2 
		fac(\@aa,\@bb);

		fac(\@bb, \@aa);						
	}


}

fac(\@b,\@a);

print "c::::: ", @c, "\n";






