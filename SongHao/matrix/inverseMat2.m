clc
clear all
A=5;
isequal(getAdjointMat(A), A*length(A)/A,(-1)^0)
zero=0*rand(randi(100));
isdiag(zero)
all(all(xor(zero,ones(size(zero)))))
two=rand(2);
isInvertible(two)
function invMat=getInvByAdjoint(mat)
  invMat=1/det(mat)*getAdjointMat(mat);
endfunction
assert1(inv(two),getInvByAdjoint(two))
int=randi(100);
randInt=rand(int);
eyes=eye(length(randInt));
isequal(randInt*eyes,randInt)