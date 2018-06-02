function u=muti_ADI(h,u2,L1,L2,TS,a,b)
p=log(sqrt(b/a))/log(sqrt(2)/(2-sqrt(2)));
x=0:pi/(h-1):pi;
y=0:pi/(h-1):pi;
t=zeros(10000,1);
for n=1:p
    for l=1:50
        o=n+l*p;
        t(o,1)=((pi/(h-1))^2)*(2-sqrt(2))^(2*n-1)/4*a*(sqrt(2));
    end
end
for i=1:h
    for j=1:h
        m=(i-1)*h+j;
b2(m,1)=2*sin(x(i))*sin(y(j))*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
    end
end

for k=1:100
A=eye(h^2,h^2)+L1*t(k);
B=eye(h^2,h^2)+L2*t(k);
C=eye(h^2,h^2)-L2*t(k);
D=eye(h^2,h^2)-L1*t(k);
    f1=C*u2+b2;
    u1=G(A,f1);
    f2=D*u1+b2;
u2=G(B,f2);
if norm((u2-TS),inf)<3;
    break
end
end
u=u2;