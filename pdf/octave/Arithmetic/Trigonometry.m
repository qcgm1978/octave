clc
clear all
a = {1 1 2 2};
lin_idx = num2cell(1:4);
out = cellfun(@(x,y)x*y,a,lin_idx);
assert1(sin(pi),sin(180*pi/180),sin(deg2rad(180)),sind(180),0)
A=[0, 90, 180, 270, 360];
assert1(deg2rad (A),A*pi/180)
B=[0, pi/2, pi, 3/2*pi, 2*pi];
assert1(rad2deg (B),B*180/pi)
s=rand()*randi(1000);
assert1(cot(s) ,1/tan(s),inv(tan(s)),inverse(tan(s)))
assert1(-i*log(i*s+(1-s**2)^.5) ,asin(s))#The inverse sine is defined as the formula
assert1(-i*log(s+i*(1-s**2)^.5) ,acos(s))
assert1(cosd (90),cos (pi/2))
clf
hold on
x=y=z=p=1:180;
plot(x,tand(x))
y(y)=atan2d(2,y);
z(z)=atan2d(3,z);
p(p)=atan2d(4,p);
plot(x,y)
plot(x,z)
plot(x,p)
plotCartesian()

