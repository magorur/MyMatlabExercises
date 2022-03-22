clear all;clc;
syms y(x);
Dy=diff(y);
A=dsolve((x^2*diff(Dy)+5*x*Dy+2*y)==(0),'Implicit',true)
