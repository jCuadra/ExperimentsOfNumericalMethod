%��С���˷����������

%����¼��ģ��
Data=input('please input data Matrix')
n=length(Data(1,:));
%��ֵϵ������ģ��
P=f1(Data);
%�в����ģ��
errf1=norm(polyval(P,Data(1,:))-Data(2,:))
%���Ž���ʾģ��
y=poly2str(P,'x')
%��ֵ�⼰��ͼģ��
t=Data(1,1):0.0001:Data(1,n);
y1=polyval(P,t);
plot(t,y1,'r',Data(1,:),Data(2,:),'o');
legend('y=ploynamil(x)','Data');
title('��ɢ���ݵ���С���˷����');
xlabel('anxis X');
ylabel('anxis Y');
grid on