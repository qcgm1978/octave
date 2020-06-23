clc
clear all
A=[4 2 3;1 1 0; -1 2 3];
adjoint=getAdjointMat(A);
invA=inv(A);
detA=det(A);
n=length(A);
#first theorem: AA*=A*A=|A|E
assert1(A*adjoint,adjoint*A,det(A)*eye(size(A)))
#second theorem: |A*|=|A|^(n-1)
assert1(det(adjoint),det(A)^(length(A)-1))
#third theorem: inv(A)=(1/|A|)A* ie. A*=|A|*inv(A)
assert1(invA,1/detA*adjoint)
#fourth theorem: (A*)*=|A|^(n-2)*A
twoStar=getAdjointMat(adjoint);
assert1(twoStar,detA^(n-2)*A)
#fifth theorem: ((A*)*)*=|A|^(n^2-3n+3)*inv(A)
assert1(getAdjointMat(twoStar),detA^(n^2-3*n+3)*invA)