clc
clear
function val = smallest (varargin)
  val = min ([varargin{:}]);
endfunction
a = smallest (1, 2, 3);
b = smallest (1, 2, 3, 4);
isequal(a,b,1)
function args=print_arguments (varargin) 
  args=varargin;
#  for i = 1:length (varargin)
#    args(i,:)= varargin{i};
#  endfor
endfunction
isequal(print_arguments(),{})
mat={1,'two',3};
output=print_arguments (1,'two',3);
isequal(output,mat)
[reg, prop] = parseparams ({3,5, 'bcd',4, 11,'a', 10});
isequal(reg,{3,5})
isequal(prop,{'bcd',4,11,'a',10})