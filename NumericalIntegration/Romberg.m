%Romberg��ֵ����
format long;
%��ֵ���ֲ���¼��
c=input('�����������')
g=input('����������ޣ���������')
a=g(1);
b=g(2);
%����
h=b-a;
i=1; %�����ѱ����������
%Robberg�㷨�γ���һ������R
sym R;
R(1,1)=h*(targetfun(a)+targetfun(b))/2; %����T1

while (1)
    i=i+1; %�����ѱ������һ
    s=0;
    x=a+h/2;
    
    while (x<b)
        s=s+targetfun(x);
        x=x+h;
    end
    
    R(i,1)=R(i-1,1)/2+s*h/2;      %����T2n
    R(i,2)=(4*R(i,1)-R(i-1,1))/3;  %����Sn
    if(i>2)
     R(i,3)=(16*R(i,2)-R(i-1,2))/15;  %�ӵڶ��п�ʼ����Cn
    end
    if(i>3)
        R(i,4)=(64*R(i,3)-R(i-1,3))/63;
    end
    
    h=h/2; %��������
    
    if((i>3) & (abs(R(i,4)-R(i-1,4))<c))
        break;
    end
    
end

R
Value=R(i,3)
