%���庯��ģ��
x=0:1:10;
y=sin(x);
u=-1:0.01:11;
v=sin(u);
sym A;
A=[x;y];
%��ֵ����ģ��
X=u;
D=DiffQut(A);
Y=Newtonployinterp(A,D,X);
%ͼ����ģ��
plot(u,v,'b',x,y,'or',X,Y,'k');
legend('y=sin(x)','NODE','y=Newton(x)');
title('y=sin(x)��Newton��ֵ');
xlabel('anxis X');
ylabel('anxis Y');
grid on