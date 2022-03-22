clear all, clc
syms x(t) E R L;
L=1;E=20;R=0.2;
dsolve(E==R*x+L*diff(x))
      
-97*exp(-2/5)+100