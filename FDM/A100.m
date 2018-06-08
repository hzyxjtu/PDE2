A=gouzaoA(100);
b=youduanxiang(100);
z1=J(A,b,100);
TS=TS(100);
e=TS-z1;
ec=max(abs(e));
e0=sqrt(e'*e*(1/99));
f=0;
 for i=1:9999
f=f+(e(i+1)-e(i))^2/(1/99);
end
e1=sqrt(e0^2+f);