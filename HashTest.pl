#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: HashTest.pl
#
#        USAGE: ./HashTest.pl  
#
#  DESCRIPTION: jjjjjjjjjjj
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2015/05/23 19시 58분 47초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my %scores = ('eng' => 58, 'mat' => 100, 'perl' => 120 );
my $sum;
my $cnt;

sub sumR{
	foreach my $key (sort keys %scores){
		print $key, ":",$scores{$key}," \n";
		$sum += $scores{$key};
		$cnt++;
	}
}

sub printR{

	print "--------\n";
	print " RESULT \n";
	print "--------\n";

	printf "SUM : %4d AVG : %0.2f \n",$sum,$sum / $cnt;

}

&sumR;
&printR;

$scores{'eng'}  = 100;
$scores{'mat'}  = 100;
$scores{'perl'} = 100;
$scores{'ddr'}  = 50;

&sumR;
&printR;

print " :::::  :w ", $scores{'eng'};

my @server_data = (
        { id=>'calmmass', pass=>'ucess', ip=>'203.223.233.231' },
        { id=>'mass'    , pass=>'ucess', ip=>'203.223.233.232' },
        { id=>'mas12'   , pass=>'ucess', ip=>'203.223.233.233' },
        { id=>'ma2345'  , pass=>'ucess', ip=>'203.223.233.234' }
);
foreach my $ip (@server_data){
	printf "ID: %10s PW : %10s IP: %16s \n",$ip->{pass}, $ip->{id}, $ip->{ip};
}



