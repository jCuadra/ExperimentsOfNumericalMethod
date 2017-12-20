%���ַ��������
figure(1);
l=ezplot('2*x*cos(x)+sqrt(x^4-1)-x^2*log(x^3+1)');
set(l,'Color','red');
hold on;
l=ezplot('0');
set(l,'Color','black');
title('���������ͼ��')
legend('y=f(x)','y=0')
hold off;
grid on;
pause;
%��������ģ��
A=input('�������������\n');
eps=input('�����������eps\n');
a=A(1);
b=A(2);
x0=0;
i=0;
%���ַ����ģ��
if(ff1(a)*ff1(b)>0)
    fprintf('may no solution!');
else
    while(abs(a-b)>eps*abs(b))
        x0=(a+b)/2;
        f=ff1(x0);
        if(f*ff1(a)>0)
            a=x0;
        else
            b=x0;
        end
        x0=(a+b)/2;
        i=i+1;
    end
   %�����������ͼģ��
  fprintf('��������!\n')
  fprintf('������:\n')
  x0
  fprintf('�������:\n')
  i
  x=A(1):0.001:A(2);
  figure(2);
  plot(x,ff1(x),'b',x,0*x,'k',x0,0,'ro');
  grid on;
  title('������');
  legend('y=f(x)','y=0','root');
end