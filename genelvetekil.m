clear all, clc
syms y(x)
A=dsolve((y==2*x*diff(y)+((diff(y))^2)),'Implicit',true)