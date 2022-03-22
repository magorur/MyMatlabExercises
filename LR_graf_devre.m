clear;clc;
syms t s
L=2.5; R=5;
T=30*10^-3;
fr=1/T;
t=0:0.0001:T;
y=8*sin(2*pi*fr*t);
for h=1:length(t)                % parçalı u(t) tanıtılıyor  % bir girişli sistem
    if t(h)<0
       u(h) = 0;
    end
       if t(h)>=0 && t(h)<=T/2 
         u(h)=(8*sin(2*pi*fr*t(h)));
       end
         if t(h)>T/2 && t(h)<T
             u(h)=0;
         end
end
plot(y,t)