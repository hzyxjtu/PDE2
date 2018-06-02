function u=ADI(h,u2,L1,L2,TS)
A=eye(h^2,h^2)+L1*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
B=eye(h^2,h^2)+L2*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
C=eye(h^2,h^2)-L2*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
D=eye(h^2,h^2)-L1*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
x=0:pi/(h-1):pi;
y=0:pi/(h-1):pi;
for i=1:h
    for j=1:h
        m=(i-1)*h+j;
b2(m,1)=2*sin(x(i))*sin(y(j))*0.5*(pi/(h-1))^2/(sin(pi^2*(h-1)));
    end
end

for k=1:100
    f1=C*u2+b2;
    u1=G(A,f1);
    f2=D*u1+b2;
u2=G(B,f2);
if norm((u2-TS),inf)<3;
    break
end
end
u=u2;

