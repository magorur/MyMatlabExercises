clear;clc;
t=0:0.01:2.2;
y=-t.^3+3*t.^2-2*t;
plot(t,y),xlabel("t"),ylabel("y(t)"),grid on
alan=integral(@(x)abs(-x.^3+3*x.^2-2*x),0,2.2)