clear;clc;
V=250*exp(-1i/6);
z1=1*exp(1i*pi/2);z2=2*exp(1i*pi/5);z3=2*exp(-1i*pi/3);
z4=1*exp(1i*pi/4);z5=2*exp(-1i*pi/3);
Z=z1+((z4*(z3+z5))/(z3+z4+z5))+z2;
I=V/Z
sqrt(real(I)^2+imag(I)^2)
atand(imag(I)/real(I))