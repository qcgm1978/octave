clcclear allA = [ 2, 0; 0, 2 ];b = [ 2; 1 ];assert1(x = A \ b,[1;.5])A = [ 40, 15; 50, -25 ];b = [ 100; -50 ];assert1(A\b,[1;4])#mix, under controlled conditions, toluene C7H8 and nitric acid HNO3 to produce trinitrotoluene C7H5O6N3 along with the byproduct water#7x = 7z#8x + 1y = 5z + 2w #1y = 3z#3y = 6z + 1wA=[1 0 -1 0;8 1 -5 -2;0 1 -3 0;0 3 -6 -1];b=[0;0;0;0];#A\bA=rand(4,4);b=rand(4,1);assert1(size(A\b),[rows(A),columns(b)])#3x1 +2x2 =7 −x1+ x2=6A=[3,2;-1,1];b=[7;6];assert1(A\b,[-1;5])#3x3 = 9 #x1 +5x2 −2x3 =2#1/3 x1 + 2x2 = 3A=[0 0 3;1 5 -2;1/3 2 0];A1=A3=flipud(A);b=b3=[9;2;3];b1=flipud(b);k=randi(100);A2=k*A;b2=k*b;A3(1,:)=sum(A3);b3(1)=sum(b3);assert1(A\b,A1\b1,A2\b2,[3;1;3])A3\b3