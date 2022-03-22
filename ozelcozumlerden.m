clear all, clc
syms y(x);
Dy=diff(y);Dy2=diff(Dy);
A=dsolve(3*x^2*Dy2+x*Dy-2*y==2*x^2,'Implicit',true)
%vize soru 1