function TS=TS(h)
x=0:pi/(h-1):pi;
y=0:pi/(h-1):pi;
for i=1:h
    for j=1:h
        m=(i-1)*h+j;
TS(m,1)=2*sin(x(i))*sin(y(j));
    end
end
