clc
clear
function varargout = one_to_n () 
  for i = 1:nargout
    varargout{i} = i;
  endfor
endfunction
isequal(typeinfo([a, b, c] = one_to_n ()),'scalar')
isequal(typeinfo(one_to_n ()),'scalar')
isequal(class(one_to_n ()),'double')
[a, b, c] = one_to_n ();
d = one_to_n ();
isequal(d,1)
for i=1:3
  isequal([a b c](i),i)
endfor
x='x';y='y';z='z';
 [a, b, c] = deal (x, y, z);
 isequal(a,'x')
 isequal(b,'y')
 isequal(c,'z')
 [a b c]=deal(x);
 isequal(a,b,c,x,'x')
 c = {[1 2], "Three", 4}; 
 [x, y, z] = c{:};
 isequal(x,[1 2])
 isequal(y,'Three')
 isequal(z,4)