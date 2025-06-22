close all
clear all
clc
fs=8000;
fm=20;
fc=500;
Am=1;
Ac=1;
t=(0:0.1*fs)/fs;
m=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
s1=m.*c;
subplot(4,3,1:3);
plot(t,m);
title('Modulating signal(fm=20Hz)');
subplot(4,3,4:6);
plot(t,c);
title('Carrier signal(fc=500Hz)');
subplot(4,3,7:9);
plot(t,s1);
title('DSB-SC Modulated signal');
r1=s1.*c;
[b,a]=butter(2,0.01);
mr1=filter(b,a,r1);
subplot(4,3,10:12);
plot(t,mr1);
title('Demodulated signal(U)')