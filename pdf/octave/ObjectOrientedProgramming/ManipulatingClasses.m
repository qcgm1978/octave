clc
clear all
mat=[1, 0, 1];
p = polynomial (mat);
assert1(typeinfo(p),'class')
assert1(p.poly,mat)
V=[1, 0, 0, 0, 1];
p = set (p, "poly", V);
assert1(p.poly,V)
save userclass.mat p
m=p;
clear p
fail('p',"'p' undefined")
load userclass.mat
assert1(m,p)