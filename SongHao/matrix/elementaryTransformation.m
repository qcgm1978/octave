clc
clear all
A=B=C=getNaturalSquare(3,true);
detA=det(A);
A([1 2],:)=A([2 1],:);
V=B(1,:);
B(1,:)=B(2,:);
B(2,:)=V;
assert1(A,B)
assert1(det(A),det(B),-detA)
detA=det(A);
k=randi([2,5]);
A(1,:)=k*A(1,:);
x.tol=0;
assert1(det(A),k*detA)
mat=getNormMat(2,1,4,3);
mat1=convertNorm([1 2 1;-1 -1 0;0 1 1;1 3 2]);
assert1(mat1,mat)