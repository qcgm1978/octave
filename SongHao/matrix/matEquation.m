clc
clear all
A=[4 2 3;1 1 0; -1 2 3];
#Ax=A+2x
eyes1=eyes2=eyes=eye(length(A));
eyes1(eyes1==1)=2;
eyes1(eyes1==0)=1;
eyes1(eyes1==2)=0;
one=eyes==1;
zero=eyes==0;
eyes2(one)=0;
eyes2(zero)=1;
isequal(A-2!=A-2*eyes,eyes1,eyes2)
fail('1/A','nonconformant arguments')
isequal(inv(1),1)
isequal(1\A,inverse(1)*A,inv(1)*A,A)
isequal(round(inv(inv(A))*1e4)/1e4,A)
A=rand(3);
B=rand(3);
C=inv(A*B);
D=inv(B)*inv(A);
!all(all(C==D))
all(all(fixnum(C)==fixnum(D)))
allTrue(fixnum(C)==fixnum(D))
allTrue(transpose(A*B)==transpose(B)*transpose(A))