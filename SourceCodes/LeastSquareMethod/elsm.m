%ָ��������С���˷����������

%����¼��ģ��
Data=input('please input data Matrix')
n=length(Data(1,:));
%��ֵϵ������ģ��
A=f2(Data);
%�в����ģ��
errf2=norm(A(1)*exp(A(2)*Data(1,:))-Data(2,:))
%���Ž���ʾģ��
syms x;
y=A(1)*exp(A(2)*x)
%��ֵ�⼰��ͼģ��
t=Data(1,1):0.0001:Data(1,n);
y2=A(1)*exp(A(2)*t);
plot(t,y2,'r',Data(1,:),Data(2,:),'o');
legend('y=a*exp(b*x)','Data');
title('��ɢ���ݵ���С���˷����');
xlabel('anxis X');
ylabel('anxis Y');
grid on