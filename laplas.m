clear all, clc
syms s
F_s=3*(exp(-25*s))*(2/s^3+14/s^2+49/s);f_t=ilaplace(F_s)
49*heaviside(8 - 7) + 14*heaviside(8 - 7)*(8 - 7) + heaviside(8 - 7)*(8 - 7)^2
