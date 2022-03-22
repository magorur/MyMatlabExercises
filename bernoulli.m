clear all, clc
syms y(x); Dy=diff(y);
p(x)=1/3;
q(x)=exp(x);
A=dsolve(Dy+p(x)*y(x)==(q(x)*y(x)^4),'Implicit',true)
