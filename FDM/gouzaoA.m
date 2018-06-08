function A=gouzaoA(h)
A=zeros(h^2,h^2);
A(1,1)=1;A(1,2)=-0.25;A(1,h+1)=-0.25;
A(h^2,h^2)=1;A(h^2,h^2-h)=-0.25;A(h^2,h^2-1)=-0.25;
for i=h+1:h^2-h
    A(i,i)=1;
    A(i,i-h)=-0.25;A(i,i+h)=-0.25;A(i,i+1)=-0.25;A(i,i-1)=-0.25;
end
for i=2:h
    A(i,i)=1;
    A(i,i+h)=-0.25;
    A(i,i+1)=-0.25;
    A(i,i-1)=-0.25;
end
for i=h^2-h+1:h^2-1
    A(i,i)=1;
    A(i,i-h)=-0.25;
    A(i,i+1)=-0.25;
    A(i,i-1)=-0.25;
end
