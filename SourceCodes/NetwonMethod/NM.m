%ţ�ٵ������󷽳̵ĸ�
%�������ű��ʽ��ͼ��Ԥ����ģ��
syms x;
f=input('����xΪΪ��������f(x)!\n');
df=diff(f);
l=ezplot(f);
set(l,'Color','red');
hold on;
l=ezplot(df);
set(l,'Color','blue');
l=ezplot('0');
set(l,'Color','black');
axis auto;
title('f(x)��f"(x)��ͼ��');
legend('f(x)','f"(x)','y=0');
grid on;
pause;

%����¼��ģ��
x0=input('��������Ƶĳ�ʼֵ:\n');
eps=input('����������޶�eps:\n');
N=input('����������������:\n');

%ţ�ٵ���������ģ��
i=0;
if(ft(df,x0)==0)
    fprintf('no solution!');
else
   xprev=x0-ft(f,x0)/ft(df,x0);
   xn=x0;
   while(abs(xn-xprev)>eps*abs(xn))
       xprev=xn;
       xn=xn-ft(f,xn)/ft(df,xn);
       i=i+1;
       if(i>N)
           break;
       end
   end
   %�����������ͼģ��
   if(i<=N)
   fprintf('��������!\n');
   fprintf('������:\n')
   format long;
   xn
   fprintf('�������:\n')
   i
   plot(xn,0,'bo');
   title('������');
   legend('f(x)','f"(x)','y=0','root');
   hold off;
   else
       fprintf('bad solution!');
   end

end
   