function x=G(A,b)
n=size(A,1);
x=zeros(n,1);
for j=1:n-1
    T=[];
    a=A(j:n,j);
 
    m=find(abs(a)==max(abs(a)));
    A([j,m(1)+j-1],:) = A([j+m(1)-1,j],:);
    [b(j), b(j+m(1)-1)] = deal(b(m(1)+j-1),b(j));
    
    for i=1:n-j
        T(i)=-A(i+j,j)/A(j,j);
        A(i+j,:)=A(i+j,:)+A(j,:)*T(i);
        b(i+j)= b(i+j)+b(j)*T(i);
    end
end
for i=n:-1:1
    sum=0;
    for j=n:-1:i+1
        sum=sum+x(j)*A(i,j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end