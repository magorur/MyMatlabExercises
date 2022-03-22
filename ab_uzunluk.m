clear;clc;
t=1.25:0.0001:3; n=length(t);
y=[3*exp(-4*t)+12*sin(3*t)];
hold on,plot(t,y,"b-");
turev=diff(y)./diff(t);
plot(t(2:end),turev,"k-"),xlabel("t"),grid;
fark=[3*exp(-4*t)+12*sin(3*t)]-[[-12*exp(-4*t)+36*cos(3*t)]];
x=fsolve(@(t)((3*exp(-4*t)+12*sin(3*t))-((-12*exp(-4*t)+36*cos(3*t)))),[1.25 3]);
x;
a=3*exp(-4*x)+12*sin(3*x);
mesafe=sqrt((a(2)-a(1))^2+(x(2)-x(1))^2)
