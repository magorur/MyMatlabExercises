clear all;clc;
syms y(x);
Dy=diff(y);Dx=diff(x);
A=dsolve(diff(y)==(sqrt(x+y+1)),'Implicit',true)