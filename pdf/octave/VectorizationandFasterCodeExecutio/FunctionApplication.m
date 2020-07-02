clc
clear all
assert1(arrayfun (@atan2, [1, 0], [0, 1]),[atan2(1,0),atan2(0,1)],[1.5708   0])
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
function [a, b] = twoouts (x)
  a = x;
  b = x*x;
endfunction
aCell={1, 2, 3};
x2= cellfun (@(x) x^2, aCell);
[aa, bb] = cellfun (@twoouts, aCell);
assert1(x2,bb)
assert1(aa,cell2mat(aCell),[1 2 3])
fail('cellfun ("tolower", {"Foo", "Bar","FooBar"},             "UniformOutput", true)','all values must be scalars when UniformOutput = true')
aCell=cellfun ("tolower", {"Foo", "Bar", "FooBar"},
"UniformOutput", false);
assert1(aCell,{'foo','bar','foobar'})
