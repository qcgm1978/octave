clc
clear all
A=[1 1 1 1;2 3 4 5;6 1 4 9];
[matDet,eleMat,cofactor,al]=getNOrderCofactor(A,[1,2],[3,4]);
assert1(eleMat,[1 1;4 5])
assert1(cofactor,det(eleMat),1*5-4*1,1)
assert1(rank(A),getRank(A),3)