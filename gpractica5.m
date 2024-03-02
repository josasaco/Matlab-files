%Ejercicio #1
syms s
xt=ilaplace((2+((4*s)/(s^2+4)))*(1/(s^2+2*s+1)));
ezplot(xt,[0,10])
grid on
title('señal x(t)')

%Ejercicio #2
clc
clear all
close all
syms s
F1=(s+3)/(s*(s^2+1));
f1=ilaplace(F1);
t=0:0.01:14;
f1num=subs(f1,t);
plot(t,f1num,'b')
F2=F1*exp(-s*pi);
f2=ilaplace(F2);
hold on
f2num=subs(f2,t);
plot(t,f2num,'r')
F3=F1*exp(-s*2);
f3=ilaplace(F3);
hold on
f3num=subs(f3,t);
plot(t,f3num,'g')
title('Tranformada inversa-Teorema de traslación')
legend('f1(t)','f2(t)','f3(t)')

%%Ejercicio 3
syms s
I=(10+s)/(s*(s+5));
it=ilaplace(I);
subplot 311
ezplot(it)
title('Corriente del circuito i(t)')
Vr=5*it;
subplot 312
ezplot(Vr)
title('Voltaje en la resistenca Vr(t)')
Vind=1*diff(it);
subplot 313
ezplot(Vind)
title('Voltaje en el inductor Vind(t)')
