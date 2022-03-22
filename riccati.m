clear all, clc
syms y(x);
Dy=diff(y);
p(x)=-exp(2*x);
q=2;
r(x)=exp(-2*x);
A=dsolve(Dy==(p(x)+q*y(x)+r(x)*y(x)^2),y(0)==0,'Implicit',true)
1/(exp(-2*-2)/2 + 1/2) - exp(2*-2)