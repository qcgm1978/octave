clc
clear all
A = [ 1:3; 4:6; 7:9;11:13;20:22 ]; 
save myfile.txt A
fid = fopen('myfile.txt');

x = textscan(fid,'%s %f %f %f','Delimiter',',')
#load myfile.mat
#save -binary data a 
#load data
#fid = fopen ("myfile.txt", "w");
# fdisp (fid, "3/8 is ");
#fdisp (fid, num2str(3/8));
#fclose (fid);
#fdisp (stdout, "The value of pi is:"), fdisp (stdout, pi)
#dlmwrite ('myfile.txt', [1 2 3], ",", [4 5])
#x = dlmread ('myfile.txt')