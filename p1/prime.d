import std.math;
import std.stdio;

void main()
{
	int[] allPrimes = [];
	int[] smallprimes = [2,3,5,7];
	foreach(int num; 2..101) {
		int k = 0;
		foreach(int j; smallprimes) {
			if (num%j == 0) break;
			++k;
		}
		if (k==4) allPrimes ~= num;

	}
	smallprimes ~= allPrimes;
	writeln(allPrimes);
	writeln(smallprimes);
}
