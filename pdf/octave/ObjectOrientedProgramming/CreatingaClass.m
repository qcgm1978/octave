clc
clear all
p = polynomial ([1, 0, 1]);
assert1(p.poly,get(p,'poly'),[1 0 1])
isobject(p)
isa(p,'polynomial')
mp=methods(p);
typeP=typeinfo(mp);
isa(typeP,'char')
assert1(typeP,'cell')
assert1(mp,{'display';'get';'polynomial';'set';'subsref'})
ismethod( p,'polynomial')
ismethod (p, "roots")==0