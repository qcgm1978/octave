clcclearz = eig(randn(20));figureplot(z,'o')x = -2:0.25:2;z1 = x.^exp(-x.^2);z2 = 2*x.^exp(-x.^2);real_z1 = real(z1);imag_z1 = imag(z1);real_z2 = real(z2);imag_z2 = imag(z2);plot(real_z1,imag_z1,'g*',real_z2,imag_z2,'bo')