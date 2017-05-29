#!/usr/bin/perl

use strict;
use warnings;

our $N = 10000; 
our $NPRIMES = 1229;

sub sieve {
	my $printme = shift; 

	my $i;
	my $j;
	my @a;

	for ($i = 2; $i <= $N; $i++) {
		$a[$i] = 1;
	}

	for ($i = 2; $i <= $N/2; $i++) {
		for ($j = 2; $j <= $N/$i; $j++) {
			$a[$i * $j] = 0;
		}
	}

	my $total = 0;
	for ($i = 1; $i <= $N; $i++) {
		if ($a[$i]) {
			$total += 1;
			if ($printme) {
				print " $i ";
			}
		}
	}
	return $total;
}

sub test_sieve {
	if (sieve(my $printme = 1) == $NPRIMES) {
		return 1;
	} 
	return 0;
}

my $test_val = sieve(my $printme = 0); 
if (test_sieve()) {
	print "sieve function OK   : got $test_val\n"; 
} else {
	print "sieve function FAIL : got $test_val\n"; 
}
	
		




