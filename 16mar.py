def even_fib(cache=[1,2], sum=2):
  if cache[-1] > 4000000:
    return sum
  else:
    #print cache
    #print sum
    val = cache[-1] + cache[-2]
    cache.append(val)
    if val % 2 == 0:
      sum+=val
    return even_fib(cache, sum)

print even_fib()

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
#
import math
from math import sqrt

def is_prime(num):
  for thing in range(2,int(sqrt(num))+1):
    #print thing
    if num % thing == 0:
      return False
  return True

for thing in range(5,40):
  print is_prime(thing)

def pf(num, count=2):
  test = num/count
  if test < 2:
    return "no prime factor"
  elif is_prime(test):
    return test
  else:
    pf(num, count+1)

#print pf(600851475143)