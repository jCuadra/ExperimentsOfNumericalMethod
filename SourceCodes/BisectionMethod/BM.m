%���ַ��������
figure(1);
l=ezplot('sin(x)/sqrt(1+x^2)-tan(x)+log(x)/log(10)',[5 20]);
set(l,'Color','red');
hold on;
l=ezplot('0',[-5 20]);
set(l,'Color','black');
hold off;
title('���������ͼ��')
legend('y=f(x)','y=0')
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
if(ff(a)*ff(b)>0)
    fprintf('may no solution!');
else
    while(abs(a-b)>eps*abs(b))
        x0=(a+b)/2;
        f=ff(x0);
        if(f*ff(a)>0)
            a=x0;
        else
            b=x0;
        end
        x0=(a+b)/2;
        i=i+1;
    end

   %�����������ͼģ��
   fprintf('��������!\n');
   format long;
   fprintf('������:\n')
   x0
   fprintf('�������:\n')
   i
   x=A(1):0.01:A(2);
   f=ff(x);
   figure(2);
   plot(x,f,'b',x,0*f,'k',x0,0,'ro');
   grid on;
   title('������');
   legend('y=f(x)','y=0','root');
end