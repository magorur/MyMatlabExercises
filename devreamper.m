clear;clc;
a=40;   b=pi/4;    n=8;    w=-pi/2;    m=14;   h=pi/3;
V=a*sqrt(2)*exp(1i*b);
z1=2*exp(-1i*pi/4);
z2=n*exp(1i*w);
z3=m*exp(1i*h);
z4=3*exp(1i*pi/2);
z5=4*exp(-1i*pi/3);
zo=(z5*z2)/(z5+z2);
zs=(zo*(z4+z3))/(zo+z3+z4);
Z=z1+zs;
A=abs(inv(Z)*V)
