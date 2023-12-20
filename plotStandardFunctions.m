clc;
clear all;
close all;
% to generate unit impulse signal
t=-2:1:2; y=[zeros(1,2),ones(1),zeros(1,2)]; subplot(2,2,1);
stem(t,y);
xlabel('Time'); ylabel('Amplitude');
title('Unit impulse signal');
% to generate unit step signal
N=input('Enter the value of N ='); t=0:N-1;
y1=ones(1,N);
subplot(2,2,2);
stem(t,y1);
xlabel('Time');
ylabel('Amplitude');
title('Unit step signal');
% to generate unit ramp signal
N1=input('Enter the value of N1 =');
t=0:N1;
subplot(2,2,3);
stem(t,t);
xlabel('Time');
ylabel('Amplitude');
title('Ramp signal');
% to generate exponential signal
N2=input('Enter the value of N2 ='); t=0:1/4:N2;
a=input('Enter the value of a ='); y2=exp(a*t);
subplot(2,2,4);
stem(t,y2);
xlabel('Time'); ylabel('Amplitude'); title('Exponential signal');
% to generate sine wave
t=0:1/32:2;
x=sin(2*pi*t);
figure(2);
subplot(2,1,1);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave');
% to generate cosine wave
t=0:1/32:2;
x=cos(2*pi*t);
subplot(2,1,2);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Cosine');