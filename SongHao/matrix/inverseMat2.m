clcgetAdjointMatgetAdjointMat
clear all
A=5;
isequal(getAlgebricComplement(A), A*length(A)/A,(-1)^0)
zero=0*rand(randi(100));
isdiag(zero)
all(all(xor(zero,ones(size(zero)))))
two=rand(2);
isInvertible(two)
comp=getAlgebricComplement(two);
assert1(inv(two),1/det(two)*comp)