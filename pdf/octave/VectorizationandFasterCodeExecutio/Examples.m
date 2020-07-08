clc
#clear 
A=randi(5,1,6);
n = length (A)-1;
B = zeros (n, 2);#set the size of the result matrix first, then insert values into it
for i = 1:length (A)-1
  ## this will be two columns, the first is the difference and the second the mean of the two elements used for the diff. 
  B(i,:) = [A(i+1)-A(i), (A(i+1) + A(i))/2];
endfor
#C = diff(A)';Use built-in and library functions if possible
#D=.5*(A(1:end-1)+A(2:end))';#whole-array operations
assert1(B,[diff(A)',.5*(A(1:end-1)+A(2:end))'])#Avoid computing costly intermediate results
X = [1 1 2 3 5 8 13 21];
Y = diff(X);
Z=getDiff(X);
assert1(length(X),length(Y)+1,length(Z)+1)
assert1(Y,Z)
X = [1 1 1; 5 5 5; 25 25 25];
Y = diff(X);
Z=getDiff(X);
assert1(Y,Z)
X = [0 5 15 30 50 75 105];
Y = diff(X,2);
X = [1 3 5;7 11 13;17 19 23];
Y = diff(X,1,2);
Z=getDiff(X,1,2);
assert1(Y,Z)
A = mycell ([1 2 3], [4 5], 6);
B = mycell (5, [4 5], 2);
assert1(plus(A,B),A+B)
# A + B
t1 = datetime('now')
#t2 = t1 + octaveDatetime.minutes(5);
#t = t1:minutes(1.5):t2