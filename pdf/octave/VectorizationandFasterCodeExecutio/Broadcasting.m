clc
clear all
x = zeros ([2, 3, 5, 7]);
assert1(size (permute (x, [2, 1, 3, 4])),[3 2 5 7])
assert1(size (permute (x, [1, 3, 4, 2])),[2 5 7 3])

## The identity permutation
assert1(size (permute (x, [1, 2, 3, 4])),[2 3 5 7])
x = [1 2 3; 4 5 6;7 8 9];
y = [10 20 30];
assert1(x+y,x+repmat(y,rows(x),1),doBroadcast(x,y,@plus))
x(:,4)=[1;2 ;3];
fail('x+y','nonconformant arguments')
assert1(y-y',doBroadcast(y,y',@minus))
assert1(x-42,doBroadcast(x,42,@minus))
assert1(max(x,2),doBroadcast(x,2,@max)) 
curPath=fileparts(mfilename('fullpath'));
img= imread ([curPath,"/hotPants.jpg"]);
img2=img .* permute ([0.8, 0.9, 1.2], [1, 3, 2]);
assert1(size(img2),size(img))
assert1(length(img2==img),length(img))
clf;
imshow(img)
a=rand(3);
b=rand(3);
c = sum (permute (a, [1, 3, 2]) .* permute (b, [3, 2, 1]), 3);
d=doBroadcast(permute (a, [1, 3, 2]),permute (b, [3, 2, 1]),@times);
assert1(c,sum(d,3))