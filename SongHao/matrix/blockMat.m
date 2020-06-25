clc
clear all
A=[1 1 3 4 0;2 0 1 1 0;1 1 1 1 3; 4 1 1 1 0];
assert1(find(getNormMat(2,5)),[1;9])
normMat=getNormMat(2,5);
normMat0=getNormMat(2);
normMat1=getNormMat(2,5,8);
assert1(normMat4=getNormMat(0,5,6),zeros(6,5))
assert1(normMat0,eye(2))
assert1(find(normMat),[1;9])
assert1(find(normMat1),[1;10])
assert1(size(normMat1),[8 7])
assert1(size(normMat),[7,7])
normMat(normMat==1)=2;
A=normMat;
normMat(normMat==2)=3;
B=normMat;
normMat(normMat==3)=2*3;
C=normMat;
assert1(A*B,C)

A=rand(4,5);
B=A(1,1:4);
C=A(1,5);
D=A(2:4,1:4);
E=A(2:4,5);
F={B,C,D,E};
assert1(combineCellMat(size(A),F),A)
F={A(:,1),A(:,2),A(:,3),A(:,4),A(:,5)};
assert1(combineCellMat(size(A),F),A)

isNormMat(getNormMat(2,1))
isNormMat(getNormMat(2,1,4))
isNormMat(getNormMat(3,0,4))
isNormMat(getNormMat(4,0))
isNormMat(zeros(3))
~isNormMat(diag([1 1 0 1]))
A=diag([0 1 1]);
~isNormMat(A)
A=rand(4,6);
B=rand(6,4);
C={A(:,1),A(:,2:3),A(:,4:6)};
mat=[];
for i=C
mat=[mat,B*i{1}];
endfor
assert1(B*A,mat)