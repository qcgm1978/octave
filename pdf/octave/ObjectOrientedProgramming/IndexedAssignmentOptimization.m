clc
clear all
val = magic (3);
idx.type = "()";
idx.subs = {":", 1:2};
asgn=subsasgn (val, idx, 0);
assert1(asgn,asgnsubs(val,idx,0))
ss = substruct ("()", {1});
ss1 = substruct ("()", {1,1});
assert1(ss,struct('type','()','subs',{{1}}))
assert1(x = subsasgn (val, ss, 1), subsasgn (val, ss1, 1),asgnsubs(val,ss,1))
