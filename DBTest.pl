#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: DBTest.pl
#
#        USAGE: ./DBTest.pl  
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
#      CREATED: 2015/03/21 18시 48분 01초
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use DBI; 

my $dbfile	= "sample.db";
my $dsn		= "dbi:SQLite:dbname=$dbfile";
my $user	= "";
my $password= "";
my $dbh = DBI->connect($dsn, $user, $password, {
	PrintError => 0, 
	RaiseError => 1, 
	AutoCommit => 1,
	FetchHashKeyName => 'NAME_lc',
	});

my $sql = << 'END_SQL';
CREATE TABLE people (
	id INTEGER PRIMARY KEY, 
	fname VARCHAR(100),
	lname VARCHAR(100), 
	email VARCHAR(100) UNIQUE NOT NULL,
	password VARCHAR(20)
)
END_SQL

#######   주석 $dbh->do($sql);

my $fname = 'faggg';
my $lname = 'Bar';
my $email = 'fffffoo@gmail.com';

$dbh->do('INSERT INTO people (fname, lname, email) VALUES ( ?, ?, ? ) ', undef, $fname, $lname, $email);
$dbh->do('INSERT INTO people (fname, lname, email) VALUES ( ?, ?, ? ) ', undef, 'leeminuk', 'fe', 'dk', 'baro@gmail.com');
$dbh->do('INSERT INTO people (fname, lname, email) VALUES ( ?, ?, ? ) ', undef, 'leesanguck', 'f','ronkzoo@gmail.com');
$dbh->do('INSERT INTO people (fname, lname, email) VALUES ( ?, ?, ? ) ', undef, 'brother', 'dr', 'sexyuck@gmail.com');

$sql = 'select fname, lname from people where id > ? and id < ? ';
my $sth = $dbh->prepare($sql);
$sth->execute(1,10);

while(my @row = $sth->fetchrow_array){
	print "fname : $row[0] lname: $row[1] \n";
}

$sth->execute(1,4);
whlie(my $row = $sth->fetchrow_hashref){
	print "fname: $row->{fname} lname: $row->{fname}\n";
}

$dbh -> disconnect;


