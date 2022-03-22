clear all, clc
syms y(x); Dy=diff(y);Dy2=diff(Dy);
A=dsolve((2*x^2*Dy2-4*x*Dy-8*y)==(-5*x+2*x^2),y(2)==0,Dy(2)==0,'Implicit',true)
1^4/240 - (10*1^3 - 25*1^2 + 28)/(60*1)
%vize soru 2