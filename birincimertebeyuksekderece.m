clear all, clc
syms y(x) C1 C2 C;
Dy=diff(y);
A = dsolve((Dy)+y/3-(exp^x)*y^4==(0),'Implicit',true)
