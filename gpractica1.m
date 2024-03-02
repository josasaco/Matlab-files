%Ejercicio 1
t=0:0.001:4;
xt=exp(-0.5*t).*sin(2*pi*t);
subplot 211
plot(t,xt);
title('Señal continua')
subplot 212
stem(xt);
title('Señal discreta')

%Ejercicio 2
clc;
clear all;
close all;
t=0:0.001:1;
xt=sin(2*pi*50*t); %señal sinusoidal a 50 Hz
xt2=sin(2*pi*100*t); %seña sinusoidal a 100 Hz
subplot 211
plot(t,xt);
title('Señal sinosoidal de 50 Hz')
subplot 212
plot(t,xt2);
title('Señal sinusoidal de 100 Hz')

%Ejercicio 3
t=-0.1:0.001:0.4;
yt=3*(20*cos(10*pi*(t+0.005)+(pi/2)));
plot(t,yt)
ylim([-70 70])
