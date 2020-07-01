clc
clear all
clf;
curPath=fileparts(mfilename('fullpath'));
[x1, Fs1] = audioread([curPath,'/','mix1.wav']);
[x2, Fs2] = audioread([curPath,'/','mix2.wav']);
xx = [x1, x2]';
yy = sqrtm(inv(cov(xx')))*(xx-repmat(mean(xx,2),1,size(xx,2)));
[W,s,v] = svd((repmat(sum(yy.*yy,1),size(yy,1),1).*yy)*yy');

a = W*xx; %W is unmixing matrix
subplot(2,2,1); plot(x1); title('mixed audio - mic 1');
subplot(2,2,2); plot(x2); title('mixed audio - mic 2');
subplot(2,2,3); plot(a(1,:), 'g'); title('unmixed wave 1');
subplot(2,2,4); plot(a(2,:),'r'); title('unmixed wave 2');

audiowrite([curPath,'/unmixed1.wav'], a(1,:), Fs1);
audiowrite([curPath,'/unmixed2.wav'], a(2,:), Fs1);