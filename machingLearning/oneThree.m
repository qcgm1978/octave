clc
clear all
clf;
rand_10x1_data1 = randi([500,2500],1,10);
 rand_10x1_data2 =randi([100,400],1,10);
 x = sort(rand_10x1_data1);
 y = sort(rand_10x1_data2);
 y1=0:40:400-1;
 s = 36 - 30*log (x.^2 + y.^2);
 hold on
 h = scatter (x, y,  "s", "filled");
 plot(6*y1,y1)

 title ({"Housing Price Prediction."});
 xlabel('Size in Feet')
ylabel("Price($)\nin 1000's")
 shg