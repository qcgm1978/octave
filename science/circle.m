clc
clear all
x=-1:.01:1;
y=[]
for i=1:length(x)
  y(:,i)=[sqrt(1-x(i)^2), -sqrt(1-x(i)^2)];
endfor
plot(x,y)