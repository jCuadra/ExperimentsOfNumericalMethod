%SOR ��γ��ɳڵ����� 
%��������ģ��
A=input('please input matrix A\n')
b=input('please input vextor b\n')
x0=input('please input vextor x0\n')
w=input('lpease input the w\n')
k=input('pleas input the e\n')
M=input('please input the Max\n')
%����Ԥ����ģ��
[Am,An]=size(A);
bn=length(b);
sym X;
%�жϲ�����ģ��
if((An~=Am)|(Am~=bn)|(An~=bn))
    fprint('������������Ϸ�');
else
    D=diag(diag(A))
    L=tril(A-D)
    U=triu(A-D)
    G=(D+w*L)^-1*(D-w*(D+U))
    h=w*(D+w*L)^-1*b
    X(:,1)=x0;
    for i=2:M
        x1=x0;
        x0=G*x0+h;
        X(:,i)=x0;
        if(norm(x0-x1,inf)<k)
            break;
        end 
    end
   
n=length(X(1,:));
step=n;

t=1:n;
    for i=1:bn
        plot(t,X(i,:),'r')
        hold on;
    end
    grid on;
end
fprintf('���Է��̵Ľ�\n��')
x0
fprintf('��������:\n');
step