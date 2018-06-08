function b=youduanxiang(h)
b=zeros(1,h^2);
x=0:1/(h-1):1;
y=0:1/(h-1):1;
for i=1:h
    for j=1:h
        b(1,(i-1)*h+j)=0.5*(pi)^2*sin(pi*x(i))*sin(pi*y(j))*(1/(h-1))^2;
    end
end
for k=1:h
    b(1,k)=0;
    b(1,h^2-k)=0;
    if k<h-1
    b(1,h*k+1)=0;
    end
end