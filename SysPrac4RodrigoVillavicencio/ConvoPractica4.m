%% Practica 4
%%
% 
%  Ejercicio 1
syms f(t);
f(t)=piecewise((x>=0)&(x<1),x-x^2/2,(x>=1)&(x<2),x^2-3*x+5/2,(x>=2)&(x<=3),(-x^2/2)+2*x-3/2);
figure(1);
fplot(f(t));
axis([0 3 0 1]);
xlabel('t');
ylabel('f(t)');
%% Ejercicio 3
syms k(t);
k(t)=piecewise((t>=1)&(t<2),(t^2/2)-t+1/2,(t>=2)&(t<3),t-3/2,(t==3),-t^2+4*t-6,(t>3)&(t<4),(-t^2/2)+3*t-3,(t>=4)&(t<=5),5-t);
figure(2);
fplot(k(t));
axis([0 5 0 2]);
xlabel('t');
ylabel('k(t)');

%% PR ejercicio E 
syms d(t);
d(t)=piecewise((t>=-4)&(t<-3),-t-4,(t>=-3)&(t<-1),t+2,(t>=-1)&(t<0),3*t+4,(t>=0)&(t<1),-3*t+4,(t>=1)&(t<3),-t+2,(t>=3)&(t<=4),-4+t);
figure(3);
fplot(d(t));
grid; 
axis([-4 4 -2 5]);
xlabel('t');
ylabel('d(t)');
%% PR Ejercicio F
syms z(t);
z(t)=piecewise((t>=-4)&(t<-3),-t-4,(t>=-3)&(t<-2),t+2,(t>=-2)&(t<-1),3*t+6,(t>=-1)&(t<0),-t+2,(t>=0)&(t<1),-3*t+2,(t>=1)&(t<2),-t,(t>=2)&(t<=4),-4+t);
figure(4);
fplot(z(t));
grid; 
axis([-4 4 -2 5]);
xlabel('t');
ylabel('z(t)');
