% 假位置生成
tic;
sum0=0;
MAX0=0;
MIN0=10;
for g=1:100
k=5;
a=50;
b=100;
e=60;
f=110;
xA=(a+b)/2;
yA=(e+f)/2;
Rmin=10;
Rmax=100;
% LA=[xA,yA];
i=1;
while i<=2*k
m=unifrnd(0,1);
n=unifrnd(0,1);
x(i)=(b-a)*n+a;
y(i)=(f-e)*m+e;
dis(i)=sqrt((xA-x(i))*(xA-x(i))+(yA-y(i))*(yA-y(i)));
if dis(i)<Rmin
    i=i-1;
elseif dis(i)>Rmax
    i=i-1;
end
% L(i)=[xi,yi];
i=i+1;
end
% disp(dis);
% 假位置选取
i=1;
sum=1;
while i<=2*k
Y(i)=unifrnd(0,1);
% sum=sum+Y(i);
i=i+1;
end
% for i=1:2*k
% Pr(i)=Y(i)/sum;
% end
% for i=1:2*k
% Pr(i)=Y(i)/sum;
% end
% [k,index]=max(Pr);
[pos,num]=sort(Y,'descend');
i=1;
L=[xA yA];
sum=1;
while i<=k-1
    sum=sum+Y(i);
    i=i+1;
end
H1=-(1/sum)*log2(1/sum);
i=1;
while i<=k-1
H1=H1-(Y(i)/sum)*log2(Y(i)/sum);
Loc=[x(num(i)),y(num(i))];
L=[L;Loc];
i=i+1;
end
if H1<MIN0
    MIN0=H1;
elseif H1>MAX0
    MAX0=H1;
end
g=g+1;
sum0=sum0+H1;
Hmax=-log2(1/k);
end
h1=sum0/100;
MAX0;
MIN0;
Hmax;
TEST=[h1 MAX0 MIN0 Hmax]
toc;

