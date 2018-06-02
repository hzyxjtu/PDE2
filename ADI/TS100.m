function TS=TS100(h)
x=0:1/(h-1):1;
y=0:1/(h-1):1;
for i=1:h
    for j=1:h
        m=(i-1)*h+j;
TS(m,1)=2*sin(pi*x(i))*sin(pi*y(j));
    end
end
