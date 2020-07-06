clc
clear all
subs=[1, 2, 1, 2, 1]
val=[ 7, -10,   4;
-5, -12,   8;
-12,   2,   8;
-10,   9,  -3;
-5,  -3, -13]
accumdim (subs,val)
getAccumarray(subs,val)
#assert1(A1,A2)
