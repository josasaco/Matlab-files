%%Ejercicio 1
clc
clear all
close all
f=60; %Frecuencia señal continua
t=0:0.001:2/f;
xt=cos(2*pi*f*t+(pi/3)); %Señal continua
subplot 411
plot(t,xt,'b')
title('Señal continua f=60Hz')
xlabel('tiempo (segundos)')
ylabel('x(t)')
ylim([-1.5 1.5])
fs=400; %Frecuencia de muestreo
Ts=1/fs; %Tiempo de muestreo
n=0:1:2/(f*Ts); %tiempo discreto
xn=cos(2*pi*f*n*Ts+(pi/3)); %Señal discreta
subplot 412
stem(n,xn,'filled','r','Linewidth',1)
title('Señal discreta')
xlabel('tiempo discreto (n)')
ylabel('x[n]')
falias1=460; %Frecuencia de alias
falias2=340; %Frecuencia de alias
t1=0:0.0001:2/f;
xalias1=cos(2*pi*falias1*t1+(pi/3));
subplot 413
plot(t1,xalias1)
title('Señal de aliasing faliasing=460 Hz')
falias2=340; %Frecuencia de alias
xalias2=cos(2*pi*falias2*t1+(pi/3));
subplot 414
plot(t1,xalias2)
title('Señal de aliasing faliasing=460 Hz')

%%Ejercicio 2
t=0:0.000001:0.003;
xt=cos(16000*pi*t)+cos(4000*pi*t)+cos(1000*pi*t);
subplot 511
plot(t,xt,'g')
title('Señal continua')
fs1=10000;
Ts1=1/fs1;
n1=0:1:0.003/Ts1;
xn1=cos(16000*pi*n1*Ts1)+cos(4000*pi*n1*Ts1)+cos(1000*pi*n1*Ts1);
subplot 512
stem(n1,xn1,'filled','r','Linewidth',1)
title('Señal discreta fs=1000 muestras/s')
%ESPECTRO DE LA SENAL
L = length(n1); %n datos discretos de la señal muestreada
Y = fft(xn1); %Transformada rápida de Fourier de la señal x[n]
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = fs1*(0:(L/2))/L; %fs frecuencia de muestreo
subplot 513
plot(f,P1,'b') %Gráfico del espectro
title('Espectro de la senal muestreada fs=10000')
xlabel('f (Hz)')
ylabel('|P1(f)|')
