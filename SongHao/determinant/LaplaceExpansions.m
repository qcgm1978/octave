clcclear allA=[1 1 0 31 1 1 12 2 3 45 5 6 6];[~,detMat]=getComplementMinor(A,3,2);
assert1(detMat,[1 0 3;1 1 1;5 6 6])function val=getLaplaceExpansion(mat,row)  val=0;  for i=1:columns(mat)    val+=mat(row,i)*getAdjointMat(mat,row,i);    endfor
endfunction
assert1(getLaplaceExpansion(A,3),2.8e-15)B=[1 1 2;0 1 0;2 3 5];assert1(getLaplaceExpansion(B,1),1)assert1(getLaplaceExpansion(B,2),1)C=B(3,:);D=transpose(getAdjointMat(B))(1,:)(:);C*D==0E=[1 1 2 3;0 0 8 9;2 5 5 4;9 9 9 10];C=E(4,:);D=transpose(getAdjointMat(E))(2,:)(:);C*D==0