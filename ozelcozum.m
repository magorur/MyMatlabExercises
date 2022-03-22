clear all, clc
syms y(x);
Dy=diff(y);Dy2=diff(Dy);
A=dsolve(2*Dy2-8*Dy+8*y(x)==(3*x*exp(2*x)),'Implicit',true)