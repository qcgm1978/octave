clc
clear
#Octave’s built-in numeric objects include real, complex, and integer scalars and matrices.
#All built-in floating point numeric data is currently stored as double precision numbers.
function bool= isNumObj(num)
  isDouble=class(num)=='double';
  bool=isDouble&& isa(num,'double') && isa(num, 'float')&&isa(num,'numeric');
endfunction
isNumObj(.1)
isNumObj(1+2i)
isNumObj(2)
isNumObj([5.5])
NA != NA
isna(NA)
isequal(ndims (ones (4, 1, 1)),2)
isequal(ndims (ones (4, 1, 2, 1)),3)
isequal(ndims (ones (4, 1, 2, 2)),4)
a = 1;
b = ones (2, 3); 
assert(numel (a, b),6,'the number of ways to index with b')
a = ones (5, 3); 
isequal(numel (a, 2, ":"),3)
[nr, remainder] = size (ones (2, 3, 4, 5));
isequal(remainder,3*4*5,60)