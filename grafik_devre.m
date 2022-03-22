clear;clc;
a = [-1/400  -1/50  -1/50; 2  0  0; 1/2  0  -15/2]; b = [1/50; 0; 0]; 
c=eye(3,3);                      % üç adet çıkış istendiği için
d = [0;0;0];  x0 = [3  1  2];    % ilk koşullar
t = 0:0.001:15;                  % daha hassas çizim için delta t =0.001 yapılıyor
u=ones(1,length(t));             % t ile aynı boyutlu u(t) oluşturuluyor
for h=1:length(t)                % parçalı u(t) tanıtılıyor  % bir girişli sistem
    if t(h)<0
       u(h) = 0;
    end
       if t(h)>=0 && t(h)<=7.5 
         u(h)=t(h)*(55/7.5);
       end
         if t(h)>7.5 && t(h)<15
             u(h)=55;
         end
end                              % parçalı u(t) tanıtımı sona erdi
lsim(a,b,c,d,u,t,x0)          % lsim in soluna bir şey yazılmadığına dikkat!
grid;
