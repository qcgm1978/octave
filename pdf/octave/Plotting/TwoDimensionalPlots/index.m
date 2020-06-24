clc
clear
x = -10:0.1:10;
y=sin(x);
#plot (x, sin (x));
#xlabel ("x");
#ylabel ("sin (x)");
#title ("Simple 2-D Plot");
#poly(5)
#plot (x, y, "or", x, y2, x, y3, "m", x, y4, "+")
t = 0:0.1:6.3;
#plot (t, cos(t), "-;cos(t);", t, sin(t), "-b;sin(t);");x = 0:0.1:2*pi;
function plotcmp(scale=true)
  x = 0:0.1:2*pi;
  y1 = sin (x);
  y2 = exp (x - 1);
  #  func=inline('x')
  if(scale)
  #  func=@semilogy
  ax = plotyy (x, y1, x - 1, y2, @plot, @semilogy); 
else
  
  ax = plotyy (x, y1, x - 1, y2, @plot); 
endif
xlabel ("X");
ylabel (ax(1), "Axis 1");
ylabel (ax(2), "Axis 2");
endfunction
subplot (2, 1, 1)
plotcmp()
subplot (2, 1, 2)
plotcmp(false)
figure(1,"position",get(0,"screensize"))
#print('aa.png','-dpng','-r300');

#1:  the state of the random number generator 
  #  initialize the state vector from an arbitrary vector of length ≤ 625 
#initializes the random number generator for randn to a known value so that the returned values are reproducible
  randn ("state", 1);
    hist (randn (10000, 1), 60);#If the optional second argument is a scalar, nbins, it defines the number of bins. 
    xlabel ("Value");
    ylabel ("Count");
    title ("Histogram of 10,000 normally distributed random numbers");
isequal(isvector(1),isscalar(1),1)
h = bar (rand (5, 10));
#set (h(1), "basevalue", 0.5);