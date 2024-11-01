close all;
clear all;
clc;

%{
%a.Plot the original sinusoidal signal.
f = 50;
t = linspace(0, 200 , f);
x_t = 1/3*[sin(t/11)+sin(t/31)+cos(t/67)];


plot(t, x_t);
xlabel('time');
ylabel('x_t');
title('original sinusoidal signal');
grid on
%}

%{
%b.Get the quantized signal by rounding off the given signal with respect to 2
%bits and plot your result

f = 50;
t = linspace(0, 200 , f);
x_t = 1/3*[sin(t/11)+sin(t/31)+cos(t/67)];
x_q = round(x_t * 2^2)/2^2; %2bits --> 2 levels
stem(t, x_q);
xlabel('time');
ylabel('x_q');
title('quantized signal');
grid on
%}


f = 50;
t = linspace(0, 200 , f);
x_t = 1/3*[sin(t/11)+sin(t/31)+cos(t/67)];
x_q = round(x_t * 2^2)/2^2; %2bits --> 2 levels

%r 6-bit quantization
x_q6 = round(x_t * 2^6)/2^6; %6bits
figure;
subplot(3,1,1);
stem(t,x_q);
xlabel ('time');
ylabel('2 bit quantized signal');
title('comparison of 2 quantized signals');


subplot(3,1,2);
stem(t,x_q6);
xlabel ('time');
ylabel('6 bit quantized signal');








