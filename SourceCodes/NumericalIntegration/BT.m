%�䲽���������η�����ֵ����
format long; 
%��ֵ���ֲ���¼��
c=input('�����������')
g=input('����������ޣ���������')
a=g(1);
b=g(2);
%����
h=b-a;
%T1��ֵ
T=h*(targetfun(a)+targetfun(b))/2;
TT=T;
%���������ж�ѭ���������
while (1)
    TT=T;
    s=0;
    x=a+h/2;
      
    while (x<b)
        s=s+targetfun(x); %�ۼ��½ڵ�ĺ���ֵ
        x=x+h;
    end
    
    T=TT/2+s*h/2;   %�õ��ƹ�ʽ����T
    h=h/2;             %��������
    
    if(abs(TT-T)<c)
        break;
    end
    
end

T
