function  N=DiffQut(Node) %�����������

n=length(Node(1,:));      %����ڵ���Ŀ
L=zeros(n,n);             %���ɲ�־���
for i=1:n
    A(i,1)=Node(2,i);      %Ϊ��־��󸳳�ֵ
end

for j=2:n
    for i=j:n
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(Node(1,i)-Node(1,i-(j-1))); %��n-1�ײ�ּ���n�ײ��
    end
end

N=A;

