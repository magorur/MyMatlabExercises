clear;clc;
c=400000; yig=70000; bkm=60000; hd=65000; yt=300000; n=8; i=0.1;

T=0; %Baslangicta toplam sifir
for k=1:n;
    terim = 1/((1+i)^k);
    T = terim+T;
end
a=hd*(1/(1+i)^n);
b=yt*T;
d=c+yig*T;
s=bkm*(1/(1+i)^5);
nbd=((hd*(1/(1+i)^n)+yt*T))-((c+yig*T+bkm*(1/(1+i)^4)));
a+b-d-s