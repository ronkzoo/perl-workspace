#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hanoi2.pl
#
#        USAGE: ./hanoi2.pl  
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
#      CREATED: 2015/07/10 19시 03분 29초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


my $numdisks = 0;

print "Number of disks? ";
chomp( $numdisks = <STDIN> );

print "The moves are:\n\n";
movedisks( $numdisks, 'A','B','C' );
# 'A' from to 'B'
=pod
	1. 3개의 막대 중 첫번째 막대기(a)에 크기가 모두 다른 64개의 원판이 끼어져 있다.
	2. 64개의 원판은 작은 원판이 큰 원판 위에 있도록 차례대로 포개져 있다. 
	3. 이 64개의 원판을 세번째 막대기에(C)에 모두 옮겨 놓아야한다. 이때도 작은 원판이 큰 원판 위에 포개져 있어야한다
	4. 원판을 옮길 때는 반드시 한번에 한개씩 옮길 수 있고 두번째 막대기(b)를 이용할 수 있다. 
	   예를 들어 첫번째 원판을 두번째 막대기로 옮겨 놓은 후, 두번째 원판을 세번째 막대기로 옮길 수 있다. 
	5. 옮기는 과정에서 절대로 큰 원판이 작은 원판 위에 놓이지 않아야한다. 
	   예를 들어, 첫번째 막대기에 있는 첫번째 원판을 두번째 막대기에로 옮긴 후, 다시 첫번째 막대기에 있는 두번째 원        판을 두번째 막대기에 옮기면 안된다. 왜냐하면 이 경우에는 두번째 막대기에 있는 두개의 원반에서, 위의 것이 
	   큰 원반이 되기 때문이다. 

	n   : 옮길 원판의 수 ,   from : 출발한 막대 
    mid : 중간에 경유할 막대 to   : 도착할 막대 

=cut

# hanoi 함수 : n개의 원판을 A에서 C로 옮긴다. B를 사용할 수 있다.
sub movedisks {

	my( $num, $A, $B, $C) = @_;

	# 출발지 막대의 1개의 원판을 목적지 막대로 옮긴다.
	if( $num == 1 ) {
		print " - Move disk $num from $A to $C \n";
	} else {
		# 출발지 막대의 n-2개의 원판을 가운데 막대로 옮긴다. 이때 목적지 막대를 이용한다.
		# 4, 'A','C','B' 1 to B 
		# 3, 'A','B','C' 2 to C 
		# 2, 'A','C','B' 3 to B
		# 1, 'A','B','C' 4 to C 
		# 원판을 A에서 C로 옮긴다. 
		movedisks( $num-1, $A, $C, $B);
		print " * Move disk $num from $A to $C \n";
		# 가운데 막대의 n-1개의 원판을 목적지 막대로 옮긴다. 이때 출발지 막대를 이용한다.
		# 원판을 B 에서 C 로 옮긴다.  
		movedisks( $num-1, $B, $A , $C );

	}

}


