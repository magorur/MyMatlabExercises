clear;clc;
x=2:0.5:6; k=length(x);
e=2.714;
y=(2.*x.*sin(4.*x)-8.*e.^(-5.*x)-11.*(x.^3).*cos(x));
merkezi=(y(3:k)-y(1:k-2))./(x(3:k)-x(1:k-2));
plot(x(2:k-1),merkezi,"k--")
fprintf('cevap=%f\t\n',merkezi);
(-124.287070	-79.755966	-48.391410)/3