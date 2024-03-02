%%ejercicio #1
f= 4000; %Frecuencia de las señales
T= 1/f; %Periodo de las señales
tt=-T:T/30:T; %Vector de tiempo
A1=20; %Edad que representa amplitud de señal 1
A2=1.2*A1; %Amplitud de señal 2
M=3; %Representa el mes de cumpleaños
Tm1=T*(37.2/M); %Desplazamiento lineal de la señal 1
D=22; %Dia de cumpleaños
Tm2=-T*(41.3/D); %Desplazamiento lineal de la señal 2
x1=A1*cos(2*pi*f*(tt-Tm1)); %Señal x1(t)
x2=A2*cos(2*pi*f*(tt-Tm2)); %Señal x2(t)
subplot 311
plot(tt,x1,'r')
grid on
title('Señal sinusoidal x1(t)') %Titulo de Grafica
xlabel('tiempo(seg)') %Nombre del eje X
ylabel('x1(t)') %Nombre del eje Y
ylim([-35 35])
subplot 312
plot(tt,x2,'b')
grid on
title('Señal sinusoidal x2(t)') %Titulo de Grafica
xlabel('tiempo(seg)') %Nombre del eje X
ylabel('x2(t)') %Nombre del eje Y
x3= x1 + x2; %Suma de las señaes sinosuidales
subplot 313
plot(tt,x3,'g')
grid on
title('Suma de las señales sinusoidales') %Titulo de Grafica
xlabel('tiempo(seg)') %Nombre del eje X
ylabel('x3(t)') %Nombre del eje Y
ylim([-70 70])

%Ejercicio #2
t= 0:0.001:1; %Vector tiempo
fc=200; %Frecuencia de portadora
c=cos(2*pi*fc*t); %Señal portadora
vt=5+4*cos(40*pi*t); %Señal de voz
xt=vt.*c; %Multiplicacion señal modulada en AM
subplot 211
plot(t,xt,'r')
title('Señal modulada AM')
xlabel('Tiempo (seg)')
ylabel('x(t)')
Y=fft(xt);
L=length(xt);
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f=1/0.001*(0:(L/2))/L;
subplot 212
plot(f,P1)
title('Espectro de un solo lado de la señal x(t)')
xlabel('f(Hz)')
ylabel('|P1(f)|')
