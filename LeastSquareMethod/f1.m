%����ʽ����Ӻ���
%�����ĳ����
function v=f1(Data)
%����ʽ��ʽ����������
c=input('please input the ploynamil')
%���ݴ���ģ��
k=length(c);
xi=Data(1,:);
yi=Data(2,:);
m=length(xi);
o=ones(1,m);
n=0;
%�������ʽ�ж������ȷ��������������
for i=1:k
    if c(i) ~=0
        n=n+1;
    end
end
%���������������
A=zeros(m,n);
%����һ��p�������Դ������ʽ��Ϊ����Ĵ���
p=zeros(1,n);
j=1;
for i=1:k
    if c(i)~=0
        p(j)=i;
        j=j+1;
    end
end
%������ϲ���
for i=1:n
    A(:,i)=(xi.^(p(i)-1)).*o;
end
x=(A'*A)^(-1) * (A'*yi');
%�����õ���ϲ����������ʽϵ������
b=zeros(1,k);
x=fliplr(x);
for i=1:n
    b(k-p(i)+1)=x(i);
end
%��ϵ��������Ϊ����ֵ����
v=b;

