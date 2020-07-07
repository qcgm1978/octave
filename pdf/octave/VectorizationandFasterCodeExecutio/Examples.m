clc
clear all
A=randi(5,1,6);
n = length (A)-1;
B = zeros (n, 2);#set the size of the result matrix first, then insert values into it
for i = 1:length (A)-1
  ## this will be two columns, the first is the difference and the second the mean of the two elements used for the diff. 
  B(i,:) = [A(i+1)-A(i), (A(i+1) + A(i))/2];
endfor
#C = diff(A)';
#D=.5*(A(1:end-1)+A(2:end))';#whole-array operations
assert1(B,[diff(A)',.5*(A(1:end-1)+A(2:end))'])#Avoid computing costly intermediate results