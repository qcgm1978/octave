clc
clear all
coef=[2, 3, 4];
p = polynomial (coef);
assert1([p{0},p{1},p{2}],coef)
assert1(p{end-1},3)
val = magic (3);
 idx.type = "()";
idx.subs = {1:2}; 
pSubs=subsref (p, idx);
assert1(pSubs,polyval (fliplr (get(p,'poly')), idx.subs{1}))
val = magic (3); 
idx.type = "()"; 
idx.subs = {":", 1:2};
asgn= asgnsubs(val,idx,0);
assert1(asgn, subsasgn (val, idx, 0))
idx={};
asgn= asgnsubs(val,idx,0);
asgn==0
V=1:4;
a = polynomial (V); 
b = 1:10;
assert1(b(a),V)