%lagerange interpolation function
function v=ployinterp(A,u)

%���ݱ���ģ��
n=length(A(1,:));
v=zeros(size(u));

%�������ղ�ֵ����ʽ����ģ��
for k=1:n
    w=ones(size(u));
    for j=[1:k-1 k+1:n] %��ѭ�����ɻ�����ֵ��һ��
        w=(u-A(1,j))./(A(1,k)-A(1,j)).*w; 
    end
    v=v+w*A(2,k);
end

