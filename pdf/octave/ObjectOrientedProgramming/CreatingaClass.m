clc
clear all
p = polynomial ([1, 0, 1]);
isobject(p)
isa(p,'polynomial')
mp=methods(p);
typeP=typeinfo(mp);
isa(typeP,'char')
assert1(typeP,'cell')
assert1(mp,{'polynomial'})
ismethod( p,'polynomial')
ismethod (p, "roots")==0