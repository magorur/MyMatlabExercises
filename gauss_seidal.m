clear;clc;
% Ax=B lineer matris esitliginin Gauss-Seidel iterasyonu ile cözümü
% x; matrisi 1*n boyutunda çözüm matrisidir
% ilk; matrisi n*1 boyutunda baslangic degerler matrisidir
% delta; iterasyonun son iki adimi arasindaki müsade edilebilen fark 
% maxiter; maksimum iterasyon sayisidir.  
% Eger maxiter sayisina kadar iterasyon yakinsamaz ise programi durdurmak için bu deger kullanilir
A=[6 7 2;4 1 1;2 3 4]; b=[10;6;8]; ilk=[2;2;2];
n=length(b);x=zeros(1,n); maxiter=3; delta=0.001;
for k=1:maxiter
    for j=1:n
        if j==1
           x(1)=(b(1)-A(1,2:n)*ilk(2:n))/A(1,1);
        elseif j==n   
           x(n)=(b(n)-A(n,1:n-1)*(x(1:n-1))')/A(n,n);
        else
           x(j)=(b(j)-A(j,1:j-1)*x(1:j-1)-A(j,j+1:n)*ilk(j+1:n))/A(j,j);
        end
    end
    hata=abs(norm(x'-ilk));
    hatatek=hata/(norm(x)+eps);
    ilk=x';
    if (hata<delta)||(hatatek<delta)
        disp('iterasyon maxiter den önce sona erdi')
        break
    end
end
disp('iterasyon sayisi=');
disp(k-1);x=x'
sum(x)