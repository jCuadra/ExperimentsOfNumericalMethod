%��������ģ��
sym A;
A=input('�������ֵ������ݾ���[xi;yi]')
s=length(A(1,:));
%��ֵ����ģ��
X=A(1,1):0.01:A(1,s);
Y=ployinterp(A,X);
%ͼ����ģ��
plot(X,Y,A(1,:),A(2,:),'or');
legend('y=Ln(x)','NODE');
title('��ɢ���ݵ��lagrange��ֵ');
xlabel('anxis X');
ylabel('anxis Y');
grid on
%���ű�ʾģ��
symx=sym('x');
P=ployinterp(A,symx);
pretty(P)
simplify(P)