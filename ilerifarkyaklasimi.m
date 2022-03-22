clear;clc;
t=-4:0.01:2; k=length(t);
for m=1:k
    if t(m)>=-4 & t(m)<=0
        y(m)=-t(m);
    else
        y(m)=t(m);
    end
end
dt=diff(t); dy=diff(y); turev_y_t=dy./dt;
plot(t(1:k-1),turev_y_t,"k--"),grid,axis([-4 2 -2 2])
