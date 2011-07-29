#include <cstdio>
#include <cstring>
#include <iostream>

using namespace std;

void runEratosthenesSieve(int upperBound) {
      int m;
      int count = 0;
      bool *isComposite = new bool[upperBound + 1];
      memset(isComposite, 0, sizeof(bool) * (upperBound + 1));
      for (m = 2; m*m <= upperBound; m++) {
            if (!isComposite[m]) {
                  count++;
                  for (int k = m * m; k <= upperBound; k += m)
                        isComposite[k] = true;
            }
      }
      for (; m <= upperBound; m++)
            if (!isComposite[m])
                  count++;
      delete [] isComposite;
      cout << count << endl;
}

int main(int argc, char *argv[])
{
    printf("Counting primes...\n");
    runEratosthenesSieve(100000000);
    return 0;
}
