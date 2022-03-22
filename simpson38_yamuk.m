clear;clc;
x = 4:2:16;
y = 10*exp(-2*x)+0.25*x.^2
% İlk önce yukarıdaki denklemi çalıştırıp y değerleri bulunmalı
% y =  8.1832   18.0248   32.0034   50.0005   72.0001   98.0000  128.0000
Alan1 = (3*2/8)*( 4.0034    +3*9.0001   +3*16.0000 +  25.0000);
Alan2 = (3*2/8)*( 25.0000   +3*36.0000   +3*49.0000  + 64.0000);
Simpson = Alan1 + Alan2

t = [4:2:16];
z = [ 4.0034    9.0001   16.0000   25.0000   36.0000   49.0000   64.0000];
yamukalan = trapz(t,z);

abs(Simpson - yamukalan)