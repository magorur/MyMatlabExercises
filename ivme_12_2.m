clear;clc;
t=0:0.01:3; v=3.*t.^2+4.*t+6;
dt=diff(t); dv=diff(v); a=dv./dt;
a(end)
