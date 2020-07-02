clc
clear all
assert1(arrayfun (@atan2, [1, 0], [0, 1]),[1.5708   0])
#atan(1/0)
fail('arrayfun (@(x,y) x:y, "abc", "def")','all values must be scalars when UniformOutput = true')
c={'abcd','bcde','cdef'};
d=    arrayfun (@(x,y) x:y, "abc", "def", "UniformOutput", false);
assert1(c,d)
[A, B, C] = arrayfun (@find, [10; 0], "UniformOutput", false);
assert1(A,{1;[]})
assert1(C,{10;[]})
function y = ferr (s, x)
  y =assert1(s.message,'str2num: S must be a string or string array'); 
endfunction
arrayfun (@str2num, [1234],
"UniformOutput", false, "ErrorHandler", @ferr)
assert1(sin(500),sin(mod(500,2*pi)))
assert1(sin(pi),sin(180*pi/180),sin(deg2rad(180)),sind(180),0)