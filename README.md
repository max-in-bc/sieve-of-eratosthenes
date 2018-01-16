The Sieve of Eratothenes problem solved in some legacy languages and Python

Compilation/Execution Instructions:
 * [C](#c "How to run - C")
 * [Fortran95](#fortran "How to run - Fortran")
 * [Cobol](#cobol "How to run - Cobol")
 * [Python](#cython "How to run - Python")

---

**[Description of Eratosthenes Solution](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes "Overview")**

In mathematics, the sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit.

A prime number is a natural number that has exactly two distinct natural number divisors: 1 and itself.


**[Description of Eratosthenes Solution](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Overview "Algorithm")**

To find all the prime numbers less than or equal to a given integer n by Eratosthenes' method:

Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
Initially, let p equal 2, the smallest prime number.
Enumerate the multiples of p by counting to n from 2p in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself should not be marked).
Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
When the algorithm terminates, the numbers remaining not marked in the list are all the primes below n.
The main idea here is that every value given to p will be prime, because if it were composite it would be marked as a multiple of some other, smaller prime. Note that some of the numbers may be marked more than once (e.g., 15 will be marked both for 3 and 5).

**How to Run**

Usage:
             ```
             $ ./[sieve_program] <upper bound>
             ```

The program will find and print each prime number from 1 to 'upper bound'.
Each program usage is the same.

**How to Compile**
 1. **C**: [GCC](https://gcc.gnu.org/) is the only requirement
       ```css
       gcc sieve.c -o sieve_c
       ```
 2. **Fortran95**: [GFORTRAN](https://gcc.gnu.org/wiki/GFortran) is the only requirement
      ```css
      gfortran sieve.f95 -o sieve_fortran
      ```
 3. **Cobol**: [GnuCOBOL](https://open-cobol.sourceforge.io/faq/) is the only requirement
       ```css
       cobc -x sieve_cobol.cobc
       ```
 3. **Python**: [NumPy](http://www.numpy.org/) is the only requirement
       ```css
       No compilation necessary for Python
       ```
