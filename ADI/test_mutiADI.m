tic
L1=gouzaoL1(10);
L2=gouzaoL2(10);
TS=TS(10);
u2=zeros(100,1);
 u=muti_ADI(10,u2,L1,L2,TS,a,b);
 toc