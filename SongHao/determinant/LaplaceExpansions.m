clcclear allA=[1 1 0 31 1 1 12 2 3 45 5 6 6];[~,detMat]=getComplementMinor(A,3,2);
assert1(detMat,[1 0 3;1 1 1;5 6 6])
assert1(det(A),getLaplaceExpansion(A,3))B=[1 1 2;0 1 0;2 3 5];assert1(getLaplaceExpansion(B,1),1)assert1(getLaplaceExpansion(B,2),1)C=B(3,:);D=transpose(getAdjointMat(B))(1,:)(:);C*D==0E=[1 1 2 3;0 0 8 9;2 5 5 4;9 9 9 10];C=E(4,:);[~,comp]=getAdjointMat(E);D=comp(2,:)(:);F=E;F(2,:)=F(4,:);length(any(F!=E))>0assert1(C*D,E(1,:)*D,E(3,:)*D,det(F),0)[matDet,mat,cofactor,alCofactor]=getNOrderCofactor(E,[1,2],[2,3]);assert1(mat,[1 2 ; 0 8])assert1(matDet,8)
assert1(cofactor,-16)assert1(alCofactor,-16)A=[1 2 0 0 03 4 0 0 01 2 3 4 51 1 1 1 16 6 8 3 1];[matDet,mat,cofactor,alCofactor]=getNOrderCofactor(A,[1,2],[1,2]);#Laplace Expansionassert1(matDet*alCofactor,det(A))A=rand(3,3);B=rand(3,3);assert1(det(A)*det(B),det(A*B))