%��С���˷����������

%����¼��ģ��
Data=input('please input data Matrix')
n=length(Data(1,:));
%��ֵϵ������ģ��
P=f1(Data);
A=f2(Data);
%�в����ģ��
errf1=norm(polyval(P,Data(1,:))-Data(2,:))
errf2=norm(A(1)*exp(A(2)*Data(1,:))-Data(2,:))
%���Ž���ʾģ��
y=poly2str(P,'x')
syms x;
y=A(1)*exp(A(2)*x)
%��ֵ�⼰��ͼģ��
t=Data(1,1):0.0001:Data(1,n);
y1=polyval(P,t);
y2=A(1)*exp(A(2)*t);
plot(t,y1,'r',t,y2,'b',Data(1,:),Data(2,:),'o');
legend('y=ploynamil(x)','y=a*exp(b*x)','Data');
title('��ɢ���ݵ���С���˷����');
xlabel('anxis X');
ylabel('anxis Y');
grid on