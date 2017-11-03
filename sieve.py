import sys
import numpy as np

if len(sys.argv) < 2:
    print "Usage: python sieve.py <upper limit>"
    sys.exit(1)
    
upper = int(sys.argv[1])
sMap = np.zeros(upper + 1, dtype=int)
prime = 2

for i in xrange(len(sMap)):
    sMap[i] = i
    

while(prime < upper):
    for i in xrange(prime, upper + 1):
        if (i % prime == 0) and (i != prime):
            sMap[i] = 0
            
    i = prime + 1
    
    try:
        prime = sMap[i]
        i += 1
        while (prime == 0) and (prime <= upper):
            prime = sMap[i]
            i += 1
    except:
        break
        
    if prime <= upper and i < upper:
        print prime,
        print "",