clc
clear all
A=[1 1 3 4 0;2 0 1 1 0;1 1 1 1 3; 4 1 1 1 0];
function normMat=getNormMat(oneCount,zeroCount=0,n=oneCount+zeroCount)
  m=oneCount+zeroCount;
  if(n<m)
    error('columns less than total of oneCount and zeroCount')
  endif
  normMat=zeros(m,n);
  for i=1:oneCount
    normMat(i,i)=1;
  endfor
endfunction
assert1(find(getNormMat(2,5)),[1;9])
normMat=getNormMat(2,5);
normMat0=getNormMat(2);
normMat1=getNormMat(2,5,8);
normMat2=getNormMat(2,5,8);
fail('normMat3=getNormMat(2,5,6);','columns less than total of oneCount and zeroCount')
assert(normMat4=getNormMat(0,5,6),zeros(5,6))
assert1(normMat0,eye(2))
assert1(find(normMat),[1;9])
assert1(find(normMat1),[1;9])
assert1(find(normMat2),[1;9])
assert1(size(normMat2),[7 8])
assert1(size(normMat),[7,7])
normMat(normMat==1)=2;
A=normMat;
normMat(normMat==2)=3;
B=normMat;
normMat(normMat==3)=2*3;
C=normMat;
assert1(A*B,C)