clc
clear all
x = [1 2 3; 4 5 6;
         7 8 9];
    y = [10 20 30];
assert1(x.*y,doBroadcast(x,y,@times))
b=rand(6);
a=rand(3);
ismatrix(repmat(a,2,2).*b)
fail('a.*b','nonconformant arguments')
fail('doBroadcast(a,b,@times)','one of corresponding array dimensions must be 1')
assert1(a.*a,doBroadcast(a,a,@times))