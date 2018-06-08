A=gouzaoA(10);
b=youduanxiang(10);
z1=J(A,b,10);
TS=TS(10);
e=TS-z1;
ec=max(abs(e));
e0=sqrt(e'*e*(1/9));
f=0;
 for i=1:99
f=f+(e(i+1)-e(i))^2/(1/9);
end
e1=sqrt(e0^2+f);