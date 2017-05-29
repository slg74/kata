public class Sieve {

	public static int N = 10000;
	public static int NPRIMES = 1229;

	public static int sieveFunction() {
		int i;
		int j;
		int[] a = new int[N+1]; 

		for (i=2; i<=N; i++) {
			a[i] = 1;
		}

		for (i=2; i<=N/2; i++) {
			for (j=2; j<=N/i; j++) {
				a[i*j] = 0;
			}
		}

		int total = 0;
		for (i=1; i<=N; i++) {
			if (a[i] == 1) {
				total += 1;
			}
		}
		return total;
	}

        public static boolean testSieve() {
		if (sieveFunction() == NPRIMES) {
			return true;
		}
		return false;
	}

	public static void main(String[] args) {

		int ret = sieveFunction(); 

		boolean val = testSieve(); 
		if (val == true) {
			System.out.printf("\nSieve function OK   : returned %d\n", ret); 
		} else {
			System.out.printf("\nSieve function FAIL : returned %d\n", ret); 
		}
	}
}



