#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Combination.pl
#

#        USAGE: ./Combination.pl  
#
#  DESCRIPTION: 
#	조합을 정리하면, 서로 다른 n개의원에서 순서를 고려하지 않고 r개를택할 때, 
#	이 r개로 이루어진 각 집합을 n개에서 r개 택한 '조합(combination)'  이라 하고, 
#	이 조합의 수를 다음과 같이 나타낸다.
#	nCr 
#	예를 들어 10개의 물건 중 3개를 골라 만드는 조합의 수를 10C3이라고 쓴다. 
#	이 예제에서는 5C6 의 조합을 만든다. 한편 3개의 물건을 일렬로 늘어놓는 나열하는 방법은 
#	3!이므로5P6 = 5
#	
#	아 아닌가보다 n>= r n개의 수가 r보다 커야된다. 
#   그래서 5P3으로 두 세트를 합해서 값을 찾는 방식으로 바꾸든가 해야겠다.
#   
#   중복조합을 활용하여 문제를 푼다.
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/05/25 00시 42분 54초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use constant {
	MAX => 5
};

=pod 
	다음은 n 개의 원소 중 r 개의 조합을 생성해출력하는 프로그램으로, n개의 원소는 
	1,2,3,..., n이라 가정한다. r 개의 배열변수 s에 원소를 저장하고 조합의 수 만큼 
	원소의 값을 변경해가며 출력한다. 



=cut 

# print 
my $totalCnt = 1;
sub valprint {
	my $i = 0;
	my ($a, @b) = @_;
	print "[$totalCnt] ";
	foreach (0..($a - 1)){
		print $b[$_], ", ";
	}
	$totalCnt++;
	print "\n";
}


# 팩토리얼
sub fact{
	return 1 if($_[0] eq 0);
	return $_[0] * fact($_[0] - 1);
}

# 순열
sub permutationCnt{
	my ($n, $r) = @_;

	return $n if( $r == 1) ;
	return $n * permutationCnt($n - 1, $r -1);
}

# 조합갯수
sub combinationCnt{
	my ($n, $r) = @_;
	return permutationCnt($n, $r) / fact($r);
}

# 조합
sub combination {
	
	my @arr = ( );
	my ($i,$j,$m,$count,$max_val);
	my ($n, $r) = @_;

	$arr[$_] = $_ + 1 foreach (0.. $r - 1);
	
	valprint($r, @arr);
	$count = combinationCnt($n, $r);
	
	print "++++++ : ", combinationCnt(3,3) ;

	for($i = 1; $i < $count ; $i++){
		
		$m = $r - 1;
		$max_val = $n;

		# 가장 우측 원소 검색
		while($arr[$m] == $max_val){
			$m--;
			$max_val--;
		}

		$arr[$m]++;
		for($j=$m+1;$j<$r;$j++){
			$arr[$j] = $arr[$j-1] + 1;
		}

		# i+1번째 조합을 출력
		valprint($r, @arr);
	}

	#print $count;

}

print "head::::::::::: \n";
combination(3,3);
print "bottom::::::::: \n";


=pod
(1,2,3,4,5)
1,2,3
1,2,4
1,2,5

1,3,4
1,3,5

1,4,5

=cut


