#!/usr/bin/perl 

use Socket;
use Carp; 
use FileHandle;

# (1) 명령중에서 덮어쓰지 않는 이상 8080 포트를 기본으로 사용한다. 
$port = (@ARGV ? @ARGV[0] : 8080 ); 

#(2) 로컬 TCP 소켓을 생성하고 커넥션을 기다리도록(listen) 설정한다. 
$proto = getprotobyname('tcp');
socket(S, PF_INET, SOCKET_STREAM, $proto) || die;


