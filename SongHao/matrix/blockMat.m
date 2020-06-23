clc
clear all
A=[1 1 3 4 0;2 0 1 1 0;1 1 1 1 3; 4 1 1 1 0];
function normMat=getNormMat(oneCount,zeroCount=0,m=oneCount+zeroCount,n=m)
  normMat=zeros(m,n);
  for i=1:oneCount
    normMat(i,i)=1;
  endfor
endfunction
assert1(find(getNormMat(2,5)),[1;9])
normMat=getNormMat(2,5);
normMat0=getNormMat(2);
normMat1=getNormMat(2,5,8);
normMat2=getNormMat(2,5,8,9);
normMat3=getNormMat(2,5,8,6);
assert1(normMat0,eye(2))
assert1(find(normMat),[1;9])
assert1(find(normMat1),[1;10])
assert1(find(normMat2),[1;10])
assert1(find(normMat3),[1;10])
assert1(size(normMat2),[8 9])
assert1(size(normMat3),[8 6])
assert1(size(normMat),[7,7])
