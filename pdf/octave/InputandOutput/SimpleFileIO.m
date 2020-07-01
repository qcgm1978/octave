clc
clear all
A = [ 1:3; 4:6; 7:9;11:13;20:22 ]; 
save myfile.txt A
save ('-','A')#The special filename ‘-’ may be used to return the content of the variables as a string.
#load myfile.mat