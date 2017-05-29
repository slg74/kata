#include <stdio.h>

#define N 10000

int sieve(); 
int test_sieve(); 

int sieve() {
	int i;
	int j;
	int a[N+1]; 

	for (i = 2; i <= N; i++) {
		a[i] = 1;
	}

	for (i=2; i <= N/2; i++) {
		for (j=2; j <= N/i; j++) {
			a[i*j] = 0;
		}
	}

	int total = 0; 
	for (i = 1; i <= N; i++) {
		if (a[i]) {
			total += 1;
			printf(" %d ", i); 
		}
	}
	return total;
}

int test_sieve() {
	if (sieve() == 1229) {
		return 1;
	}
	return 0;
}
	
int main() {
	int test_val = sieve();
	if (test_sieve) {
		printf("\nsieve function OK   : got %d\n", test_val); 
	} else {
		printf("\nsieve function FAIL : got %d\n", test_val); 
	}
	return 0;
}
