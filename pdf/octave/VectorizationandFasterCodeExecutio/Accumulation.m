clc
clear all
u=[1 2 3];
index=[1 2 3 1 2 3 3 2 1];
assert1(u(index),index)
x = [91, 92, 90, 92, 90, 89, 91, 89, 90, 100, 100, 100];
[u, i, j] = unique (x);
assert1( u(j),x)
m=j;
m(1,[1,2])=m(1,[2,1]);
#Use accumarray with val = 1 to count the number of identical subscripts in subs.
A=accumarray(j', 1);
getAcc=getAccumarray(j',1);
assert1(A,accumarray(m',1),getAcc)
assert1([accumarray(j', 1), u'],getElesCounts(x))
val = 101:105;
subs = [1; 3; 4; 3; 4];
A = accumarray(subs,val);
B=getAccumarray(subs,val);
assert1(A ,B)
group = [1 2 2 2 3 3]';
data = [6 43 3 4 2 5]';
indices = [group ones(size(group))];
sums = accumarray(indices, data);
sums1 = accumarray(indices, data, [numel(unique(group)) 1], @sum);
assert1(sums,sums1,getAccumarray(indices, data))
maxData = accumarray(indices, data, [numel(unique(group)) 1], @max);
maxData1 = getAccumarray(indices, data, [numel(unique(group)) 1], @max);
assert1(maxData,maxData1)
maxData = accumarray(indices, data, [numel(unique(group)) 1], ...
@(x)~any(isfinite(x)));
maxData1 = getAccumarray(indices, data, [numel(unique(group)) 1], ...
@(x)~any(isfinite(x)));
assert1(maxData,maxData1)
data(end) = Inf;
maxData = accumarray(indices, data, [numel(unique(group)) 1], ...
@(x)~any(isfinite(x)));
maxData1 = getAccumarray(indices, data, [numel(unique(group)) 1], ...
@(x)~any(isfinite(x)));
assert1(maxData,maxData1)
maxData = accumarray(indices, data, [numel(unique(group)) 1], ...
@(x)all(isfinite(x)));
maxData1 = getAccumarray(indices, data, [numel(unique(group)) 1], ...
@(x)all(isfinite(x)));
assert1(maxData,maxData1)
val = 101:106;
subs = [1 1; 2 2; 3 2; 1 1; 2 2; 4 1];
A = accumarray(subs,1);
B=getAccumarray(subs,1);
assert1(A,B)
subs=[1, 1, 1;
2, 1, 2;
2, 3, 2;
2, 1, 2;
2, 3, 2];
val=101:105;
assert1(accumarray (subs, val),getAccumarray (subs, val))
val = 101:106;
subs = [1 1; 2 2; 3 2; 1 1; 2 2; 4 1];
A = accumarray(subs,val,[4 4]);
B = getAccumarray(subs,val,[4 4]);
C = accumarray(subs,val,[]);
D = getAccumarray(subs,val,[]);
assert1(A,B)
assert1(C,D)
val = [100.1 101.2 103.4 102.8 100.9 101.5]';
subs = [1 1; 1 1; 2 2; 3 2; 2 2; 3 2];
A1 = accumarray(subs,val,[],@var);
A2 = getAccumarray(subs,val,[],@var);
assert1(A1,A2)
A1 = accumarray(subs,val,[],@(x) var(x,1));
A2 = getAccumarray(subs,val,[],@(x) var(x,1));
assert1(A1,A2)
val = int8(10:15);
subs = [1 1 1; 1 1 1; 1 1 2; 1 1 2; 2 3 1; 2 3 2];
A1 = accumarray(subs,val,[],@(x) sum(x,'native'));
A2 = getAccumarray(subs,val,[],@(x) sum(x,'native'));
assert1(A1,A2)
val = 1:10;
subs = [1 1;1 1;1 1;1 1;2 1;2 1;2 1;2 1;2 1;2 2];
A1 = accumarray(subs,val,[]);
A2 = getAccumarray(subs,val,[]);
assert1(A1,A2)
A1 = accumarray(subs,val,[],@(x) {x});
A2 = getAccumarray(subs,val,[],@(x) {x});
assert1(A1,A2)
val = 101:106';
subs = [1 1; 2 2; 3 3; 1 1; 2 2; 4 4];
A1 = accumarray(subs,val,[]);
A2 = getAccumarray(subs,val,[]);
assert1(A1,A2)
A1 = accumarray(subs,val,[],[]);
A2 = getAccumarray(subs,val,[],[]);
assert1(A1,A2)
A1 = accumarray(subs,val,[],[],NaN);
A2 = getAccumarray(subs,val,[],[],NaN);
assert1(A1,A2)
val = [34 22 19 85 53 77 99 6];
subs = [1 1; 400 400; 80 80; 1 1; 400 400; 400 400; 80 80; 1 1];
#A1 = accumarray(subs,val,[],[],[],true);
#A2 = getAccumarray(subs,val,[],[],[],true);#performance optimization
assert1(A1,A2)
