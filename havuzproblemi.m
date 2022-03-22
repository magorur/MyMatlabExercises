clear;clc;
havuz=0;
tk=0;
while havuz<600
    pompa=0.0001*exp(tk)+0.0022*exp(-2*tk);
    havuz=havuz+pompa/1000;
    tk=tk+0.001;
end
sprintf('%f\t%f\t',tk,havuz)