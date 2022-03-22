clear all;clc;
syms y(x);
Dy=diff(y);Dx=diff(x);
A=dsolve(x*diff(y)==(x^2*exp(x)+y),'Implicit',true)

B=dsolve(diff(y)==((y+x*y^3*(1+log(x)))/x),'Implicit',true)
