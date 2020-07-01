clc
clear all
#Octave is a matrix-oriented language. Vectorized Octave code will see a dramatic speed up (10X–100X) in most cases.
a=rand(3);
b=rand(3);
c=[];
for i = 1:3
  for j = 1:3
    c(i,j) = a(i,j) + b(i,j);
  endfor
endfor
d = a + b;
assert1(c,d)
n=4;
for i = 1:n-1
  e(i) = b(i+1) - b(i);
endfor
f = b(2:n) - b(1:n-1);
assert1(e,f)
a=b=rand(randi(10));
for i = 1:n
  if (a(i) > 5)
    a(i) -= 20 
  endif
endfor
b(b>5) -= 20;
assert1(a,b)
fcn = vectorize (inline ("x^2 - 1"));
assert1(quadv (fcn, 0, 3),6)
assert(unique([3,2,2,5,1,5]),[1   2   3   5])