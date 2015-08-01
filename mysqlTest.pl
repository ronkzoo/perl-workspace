#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mysqlTest.pl
#
#        USAGE: ./mysqlTest.pl  
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
#      CREATED: 2015/07/27 19시 53분 11초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DBI; 
my @ary = DBI->available_drivers();
print join("\n", @ary), "\n";
my $url= "web-messanger.c0sakyriy048.ap-northeast-1.rds.amazonaws.com";
my $dbs= "church";
my $driver_name = "mysql";
my $dsn = "DBI:mysql:database=$dbs;host=$url;port=3306";
my $dbh = DBI->connect($dsn, "sexyuck", "clsmouse00");
my $query = 'show tables;';
my $sth = $dbh->prepare($query);

#Execute the query 
#execute(args);
$sth->execute() or die "execute failed" . $sth->errstr;
my $pPrefix= " ::::: ";

#Read the matching recored and print them out 

printf "%10s TABLE LIST(%d) %10s",$pPrefix, $sth->row,$pPrefix, "\n";

my @_data_;
while (@_data_ = $sth->fetchrow_array()){
	print "data.size() ", $_data_[0], "\n";
}


# 종료
$dbh->disconnect;

