clear;clc;
x(1) = 1;  xson = 7;  y(1) = 0; h = 0.4;
hn=(xson-x(1))/h;       % adım sayısı  hesaplanıyor
for k=1:hn
  f(k)= 2*x(k)^3-3*x(k)^2+x(k)+1;      % çözülmesi istenen dif. denklem
  y(k+1)=y(k)+f(k)*h;                  % euler denklemi uygulanıyor
  x(k+1)=x(k)+h;                       % bir sonraki adımdaki x değeri hesaplanıyor
end
plot(x,y), xlabel('x'), ylabel('y'),grid on
y(4)
length(y)