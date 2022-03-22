clear;clc;
x=0:0.01:2*pi/3;
y=(2*exp(-4*x)-1.2*sin(4*x));
turev=diff(y)./diff(x);
xd=x(2:length(x));
carpim=turev(1:length(turev)-1).*turev(2:length(turev));
kritik=xd(find(carpim<0))
