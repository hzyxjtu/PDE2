function L1=gouzaoL1(h)
L1=zeros(h^2,h^2);
for i=1:h^2
    L1(i,i)=2/(h-1)^2;
if i>h
        L1(i,i-h)=(-1)/(h-1)^2;
end
if i<h^2-h+1
      L1(i,i+h)=(-1)/(h-1)^2;
end
end


    