clear;clc;
A=0;
for k=(2:4:404)
    a=((2*k+5));
    A=A+a;
    x=sum(a);
    
end
B=1;
for n=(3:3:99)
    b=((5*n+3)/(5*n-2));
    B=B*b;
    y=prod(B);
end
x/y