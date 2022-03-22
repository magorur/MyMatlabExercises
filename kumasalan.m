clear;clc;
x=linspace(2,8,50);
y=linspace(pi/2,5*pi/2,50);
[X,Y]=meshgrid(x,y);
z=X+6*exp(-3*X).^3+4.*X.*cos(Y).^2+5;
kumas=integral2(@(x,y)x+6*exp(-3*x).^3+4.*x.*cos(y).^2+5, 2,8,pi/2,5*pi/2)