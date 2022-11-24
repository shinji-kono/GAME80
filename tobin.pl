#!/usr/bin/perl

# 8600 C3 06 86 C3 11 86 21 00 

while(<>) {
    s/ //g;
    my $bin =  pack("H*",$_);
    $bin =~ s/..//;
    print $bin ; 
}
