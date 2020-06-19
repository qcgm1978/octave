clc
clear
f = @(x) x.^2; 
isequal(round(quad (f, 0, 10)*100)/100,333.33)
isequal(functions(f).type,functions(@(x)sin(x)).type,'anonymous')
isequal(quad (@(x) sin (x), 0, pi),quad(@sin,0,pi),2)
a = 1;
b = 2;
num=.13867;
[s, e, te, m, t] =regexp(num2str(num),'\.(\d+)$');
len=length(num2str(t{1}{1}));
inter=10^len;
isequal(round(quad (@(x) betainc (x, a, b), 0, 0.4)*inter)/inter,num)
f = @(x, y) x + y;
g=@plus;
x=rand();
y=rand();
isequal(f(x,y),g(x,y),plus(x,y))