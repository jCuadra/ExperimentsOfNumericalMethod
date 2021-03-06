%euler explict method
function [tout,yout]=eulerm(F,tspan,y0,h)
% Initialize variables.
syms ts;
syms ys;
tstart=tspan(1);
tfinal=tspan(2);
t=tstart;
y=y0;
ys=y;
ts(1)=t;
i=2;

%main compute
while (t<=tfinal)
    y=y+h*feval(F,t,y)';
    ys(i,:)=y;
    t=t+h;
    ts(i)=t;
    i=i+1;
end

%output.
tout=double(ts);
yout=double(ys');
