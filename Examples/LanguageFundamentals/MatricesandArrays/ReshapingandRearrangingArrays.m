clcA = [1 4 7 10; 2 5 8 11; 3 6 9 12];B = reshape(A,2,6);C=A(:);D=[];for i=1:rows(C)  col=columns(D);  if(mod(i,2))  D(1,col+1)=C(i);  else    D(2,col)=C(i);  endif
endforisequal(B,D)
C = reshape(A,2,2,3);D=[];for i=1:3  D(:,:,i)=[A(i*4-3),A(i*4-1);A(i*4-2),A(i*4)];
endfor
isequal(C,D)A = magic(3);B = A.';D=[];for i=1:3  D(:,i)=A(i,:)(:);
endfor
isequal(B,D)A = [1+I 1-I; -I I];isequal(A(2),-1i,0-1i,-0-1i)B=A';isequal(B,[1-I I;1+I,-I])A = [1 2; 3 4];B = flipud(A);C=[];for i=1:rows(A)  row=rows(C)+1;  C(row,:)=A(rows(A)-i+1,:);endforisequal(C,B)C = fliplr(A);D=[];for i=1:columns(A)  col=columns(D)+1;  D(:,col)=A(:,columns(A)-i+1);endforisequal(D,C)A = [1 2 3 4; 5 6 7 8; 9 10 11 12];B = circshift(A,[0 2]);C=A(:,[1,2]);D=A(:,[3,end]);B1=[];B1(:,[1,2])=D;B1(:,[3,4])=C;isequal(B,B1)C = circshift(A,[-1 0]);B=A([2,end],:);D=A(1,:);C1=[B ;D];isequal(C,C1)A = [1 2; 3 4];B=rot90(A);D=[];for i=1:len  [row,col]=ind2sub(size(A),i);  if(mod(row,2))  if(mod(col,2))  D(row+1,col)=A(i);  else    D(row,col-1)=A(i);  endif  elseif(mod(col,2))  D(row,col+1)=A(i);  else    D(row-1,col)=A(i);  endifendforisequal(D,B)C = rot90(B,3);isequal(C,A)isequal(rot90(A,4),A)A = magic(4)B = sort(A)#C=[]#for i=1:columns(A)#  D=A(:,i)#  for m=1:rows(D)#    E(m)#  endfor  #endforC = sort(A,2,'descend')D = sortrows(A) 