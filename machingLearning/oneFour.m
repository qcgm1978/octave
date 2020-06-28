clc
clear all
clf;
x=10:13;
y=randi([10,14],1,4);
z=randi([30,34],1,4);
yz=[y,z];
color=colormap (jet (4));
 scatter(x,y,100,color,'0')
 scatter(20:23,z,100,color,'x')
title ({"Supervised Learning"});
text(-.8,0,'O(N)')
ylabel("X2")
xlabel("X1")
clf
hold on
x=1:8;
y=randi([10,14],1,4);
z=randi([30,34],1,4);
yz=[y,z];
#color=colormap (jet (4));
color='b';
dataset=randi([5,30],1,8);
mat=repmat (dataset,8,1)
[assignments, centers]= kmeans (dataset, 1,[10; 20])
scatter(x,centers,100,color,'0')
# scatter(5:8,z,100,color,'0')
 axis([0 Inf 0 Inf]);
title ({"Supervised Learning"});
text(-2,0,'O(N)')
ylabel("X2")
xlabel("X1") 
 shg