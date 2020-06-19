clc
clear
function val = pick2nd (~, arg2) 
  val = arg2;
endfunction
x = [2, 3, 1]; 
[s, i] = sort (x);
isequal(s,[1 2 3])
isequal([~, i] = sort (x),[3 1 2])
function [out1, out2] = long_function (x, y, z) 
  if (isargout (2))#Within a function, return a logical value indicating whether the argument k will be assigned to a variable on output.
    out1 = x;
    out2=y;
  else
    out1=x;
  endif 
endfunction
isequal(a=long_function('foo1'),'foo1')
[a, b]=long_function('foo1','foo2');
isequal(a,'foo1')
isequal(b,'foo2')
