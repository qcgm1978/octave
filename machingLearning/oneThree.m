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
hold off
y=malig=randp(.5,1,10);
x=tumorSize=1:10;
 scatter(x,y,100,sqrt ( y.^2),'filled')
 labelX=xlabel('Tumor Size');
title ({"Breast cancer (malignant,belign)"});
text(-.8,0,'O(N)')
ylabel("Malignant")
clf
hold on
x=1:20;
y=randi([1,20],1,10);
z=randi([20,50],1,10);
yz=[y,z];
color=colormap (jet (20));
 scatter(x,yz,100,color,'x')
#title ({"Breast cancer (malignant,belign)"});
text(-.8,0,'O(N)')
ylabel("Age")
plot(x,40:-2:1)
 shg