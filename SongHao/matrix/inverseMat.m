clcgetAdjointMat
clear all
A=zeros(3);
A(1,:)=2;
A(2,:)=3;
A(3,:)=1;
isequal(det(A),getDet(A),det(transpose(A)),getDet(transpose(A)),0)
A(:,4)=7;
A(4,:)=5;
isequal(det(A),getDet(A),det(transpose(A)),getDet(transpose(A)),0)
A(1,1)=8;
assert1(det(A),getDet(A),1e-13)
k=round(rand()*10);
A=[
1   2   5
3   4   6
7   8   9
];
assert1(det(A)*k^length(A),det(k*A),1e-12)
function [product,pow]=getDetProduct(k,val,orders,loops=1,firstK=k)
  if(loops==0)
  product=k;
  pow=log(product)/log(firstK);
  else
    k1=k^orders*val;
    [product,pow]=getDetProduct(k1,val,orders,loops-1,firstK);
  endif
endfunction
k=detVal=3;
order=5;
isequal(k^order*detVal,  getDetProduct(detVal,detVal,5),729)
[~,pow]=getDetProduct(detVal,detVal,5,3);
isequal(pow,156)

#A=[1 1 1;2 1 3;1 1 4];
A=rand(3);
adjoint=getAdjointMat(A);
B=eye(3)*-3;
E=eye(size(A));
AE=det(A)*E;
assert1(adjoint*A,A*adjoint,AE,1e-15)
isequal(det(eye(randi(100))),det(eye(randi(1000))))
assert1(det(adjoint),det(A)^(length(A)-1))
