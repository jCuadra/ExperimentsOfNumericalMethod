%��������ģ��
sym A;
A=input('�������ֵ������ݾ���[xi;yi]')
s=length(A(1,:));
%��ֵ����ģ��
D=DiffQut(A);
X=A(1,1):0.01:A(1,s);
Y=Newtonployinterp(A,D,X);
%ͼ����ģ��
plot(X,Y,A(1,:),A(2,:),'or');
legend('y=Newton(x)','NODE');
title('��ɢ���ݵ��Newton��ֵ');
xlabel('anxis X');
ylabel('anxis Y');
grid on;
%���ű�ʾģ��
symx=sym('x');
D1=DiffQut(A);
P=Newtonployinterp(A,D1,symx);
pretty(P)
simplify(P)