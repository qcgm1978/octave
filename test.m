 a = [1;2]; b=[4;8]; assert (mean(a)>=mean(a,"g")); assert(mean(b)==6); assert(mean(a,"g")>mean(a,"h")); function retval = getSumMin (v);   if(v(1)>0&&v(2)>0)     retval = 2*mean(v,"g");   endif     endfunctionassert(a(1)==1)c=[2;8];assert(getSumMin(c)=8);##printf("%.2f%%",.5/300*100)assert(cos(1)/sin(1)>0);function y = f (x)   y = x**2;   endfunctionassert(f(3)==9)# f()function countdown       # Count down for main rocket engines       disp (3);       disp (2);       disp (1);       disp ("Blast Off!");  # Rocket leaves padendfunction#countdown()function xdot = f1 (x, t)# usage: f (x, t)## 1This function defines the right-hand # side functions for a set of nonlinear # differential equations.r = 0.25; ...endfunction assert(typeinfo(1)=="scalar");#typeinfo(1)class({});isa(1,"float");assert(isa(1,"float")==1)isa(1,"float");assert(isa(1,"numeric")==1)isa(1,"float");assert(isa(1,"integer")==0)assert(cast (-5, "uint8")==0)assert(cast (300, "int8")==127)y=( typecast (300, "int8"));z=typeinfo(y);assert(z=="int8 matrix");x = uint16 ([1, 65535]); g=typecast (x, "uint8");assert(g==[ 1, 0, 255, 255]);assert(realmin!=2.2251e-308)assert(NA!=NA)assert(isna(NA)==1)assert(NA()!=NA)assert(isna ([13, Inf, NA, NaN])==[0,0,1,0])assert(ndims (ones (4, 1, 2, 1))==3)a = 1;b = ones (2, 3); c=numel (a, b);assert(c==6)a = ones (5, 3); assert(numel (a, 2, ":")==3)assert(size ([1, 2; 3, 4; 5, 6])==[3,2])assert(size ([1, 2; 3, 4; 5, 6],2)==2)[nr, nc] = size ([1, 2; 3, 4; 5, 6]);assert(nr==3)assert(nc==2)[nr, remainder] = size (ones (2, 3, 4, 5));assert(nr==2)assert(remainder==60)A=ones(2,3);assert(isnull(A)==0)assert(isnull(A)==0)assert(A=[1;1;1;1;1;1])assert(7*1e9*1e9*1e9==7e27)fail("1=2")assert(pi,3.1416,7e-05)assert(I,sqrt(-1))assert(Inf,Inf)##assert(symvar ("x^2 + y^2 == 4"),[1;1];[2;1])v=20;d=.01;f=.2*v/d;assert(f,400)d=.005;f1=.2*v/d;assert(f1,800)assert(dec2bin(17),'10001')assert(dec2bin(100),'1100100')assert(bin2dec('1010100'),84)isequal(2^6<100,2^7>100,7-6==1);