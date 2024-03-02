%%Ejercicio 1
clc
clear all
close all
B=5;
a=6;
t=0:0.001:1;
x=B*exp(-a*t); %exponencial decreciente
y=B*exp(a*t); %exponencial creciente
figure (1)
subplot 211
plot(t,x,'r','Linewidth',3);
title('Señal exponencial decreciente')
xlabel('t(s)')
ylabel('x(t)')
subplot 212
plot(t,y,'b','Linewidth',3);
title('Señal exponencial creciente')
xlabel('t(s)')
ylabel('x(t)')
%%Sinusoidal amortiguada exponencialmente
A=10;
w=20*pi;
phi=0;
z=A*sin(w*t+phi).*exp(-a*t);
figure(2)
plot(t,z,'g','Linewidth',3);
%%Suma de funciones escalón unitario
t1=-1:0.001:1;
r=length(t1);
s=find(t1==-0.5);
u1=[zeros(1,s-1),ones(1,(r-s+1))];
v=find(t1==0,5);
u2=[zeros(1,v-1),ones(1,(r-v+1))];
u=u1-u2;
figure(3)
subplot 221
plot(t1,u1,'r','Linewidth',3);
subplot 222
plot(t1,u2,'g','Linewidth',3);
subplot (2,2,[3,4])
plot(t1,u,'b','Linewidth',3);
%%Suma de función sinusoidal y cuadrada
x1=4*sin(20*pi*t+(pi/6)); %señal seno
x2=square(10*pi*t+(0.5)); %señal cuadrada
X=x1+x2;
figure(4)
subplot 221
plot(t,x1,'r','Linewidth',3);
subplot 222
plot(t,x2,'g','Linewidth',3);
subplot (2,2,[3,4])
plot(t,X,'b','Linewidth',3);

%%Ejercicio 2
t=-1:0.001:15;
x=zeros(size(t));
i=find(t>=0 & t>=5);
x(i)=ones(size(i));
subplot 211
plot(t,x,'b','Linewidth',3)
title('Señal de entrada x(t)')
%h(t)=exp(-t) h(t)=exp(-at) H(s)=1/(s+a)
%H(s)=1/(s+1)
%H(s)=(2s+3)/(s*2+5s+3) ylsim(tf([2 3],[1 5 3]),x,t)
y=lsim(tf(1,[1 1]),x,t);
subplot 212
plot(t,y,'r','Linewidth',3)
title('Señal de salida del sistema y(t)')