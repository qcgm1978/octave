clc
clear
function nums=getPrimes(range)
  prime=isprime(range);
  nums=range(prime);
endfunction
getPrimes(1:16)
getPrimes(5:16)
getPrimes([7 8 12 15 17 21])
function num=getPiX(x)
  num=x/log(x);
endfunction
assert(getPiX(16),length(getPrimes(1:16)),.2293)
assert(getPiX(116),length(getPrimes(1:116)),5.6)
assert(getPiX(1116),length(getPrimes(1:1116)),27)
