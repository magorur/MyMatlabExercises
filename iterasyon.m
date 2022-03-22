clear,clc
F=inline('3*exp(-2*x)-4*x^3');% Fonksiyonu inline bir fonksiyon olarak tanimla
Xl=-3;Xr=1;% Verilen aralıkları gir
imax=2;tol=0.0001;% maximum iterasyon sayisini sec, tolerans degerini ata
Yl=F(Xl);Yr=F(Xr);% fonksiyonun Xl ve Xr noktalarindaki degerini hesapla
if Yl*Yr>0 % eger isaretler ayni ise
 disp('Belirtilen aralıkta kök yok')
else
 disp('iter. Xl Xr Xm Yl Yr Ym tolerans')
 for i=1:imax % maximum iterasyon sayisinca
     Xm=(Xr+Xl)/2; % Xl ile Xr nin orta deðerini bul
     Ym=F(Xm); % fonksiyonun Xm degerini hesapla
     tole=abs(Ym);% tolerans degerini |Ym| al
     Yl=F(Xl);Yr=F(Xr);
     fprintf('%3i %10.4f %10.4f %10.4f %10.4f %10.4f %10.4f %10.4f\n',i,Xl,Xr,Xm,Yl,Yr,Ym,tole)
 if Ym==0% Eger fonksiyonun degeri 0 a esit ise
    fprintf('gercek cozum x=%15.5f bulundu',Xm)% Cozumu yazdir
 break
 end
 
if tole<tol % Eger toleranstan kucuk deger bulunmus ise
 break % iterasyonu sonlandir
 end
 if i==imax % Son iterasyon icin
    fprintf('%i itereasyonda cözüm elde edilemedi',imax)
 break
 end
 % Xi ile a veya b' den hangisi arasinda isaret degisimi var ise
 % Diger ucu at
 if Yl*Ym <0
    Xr=Xm;% xi' yi yeni b yap
 else
 Xl=Xm; % xi' yi yeni a yap
 end
 end
end