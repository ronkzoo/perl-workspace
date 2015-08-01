#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Permutation.pl
#
#        USAGE: ./Permutation.pl  
#
# #  DESCRIPTION: 순열과 조합
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/05/24 18시 28분 00초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $val1=0;
my $val2=0;

# swap;
sub permutation{

	my @s = ( );
	my $i;
	my $n = $_[0];
	my $r = $_[1];

	foreach (0..$r) {
		push @s, ($_ + 1);	
	}

	print ": ",$_ foreach (@a);
	print "\n --------- \n";
	



}
=cut 
1,2,3,4,5


1,2
1,3
1,4
1,5
2,3
2,4
2,5
3,4
3,5
4,5
1,1
2,2
3,3
4,4
5,5


1,2,3
1,2,4
1,2,5

1,3,2
1,3,4
1,3,5

1,4,2
1,4,3
1,4,5

1,5,2
1,5,3
1,5,4

# 중복조합



d
=pod




