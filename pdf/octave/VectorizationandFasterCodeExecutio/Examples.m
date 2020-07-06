clc
clear all
A=rand(randi([10,100]));
n = length (A);
B = zeros (n, 2);
for i = 1:rows (A)-1
  ## this will be two columns, the first is the difference and ## the second the mean of the two elements used for the diff. 
  if(i==rows(A))
  i
  A(i+1)
  endif
  B(i,:) = [A(i+1)-A(i), (A(i+1) + A(i))/2];
endfor
C = [diff(A)(:), 0.5*(A(1:end-1)+A(2:end))(:)];