clear;clc;
c=400000; yig=80000; bkm=50000; hd=60000; yt=300000; n=8; i=0.1;

T=0; %Baslangicta toplam sifir
for k=1:n
    f = 1/((1+i)^k);
    T = T+f;
end
 
nbd=((hd*(1/(1+i)^n)+yt*T))-((c+yig*T+bkm*(1/(1+i)^4)))
1200/60/15