function z1=J(A,b,h)
D=diag(diag(A));
E=-tril(A,-1);%������
F=-triu(A,1);%������
n=E+F;
B=n/D;
g=b/D;
z1=zeros(h^2,1);
for k=1:1000 %����������Ϊ300
    z2=B*z1+g';
    z1=z2;
end