
clear all;
close all;
clc;

A = 1;
theta = 0;
f = 1/2;
omega  = (2*pi*f);

n = 0:0.1:2;

x = sin((omega * n) + theta);


subplot(2,1,1);
stem(n,x);
xlabel('n');
ylabel('sin pi n');
title('original signal');
grid on;

subplot(2,1,2);
stem(n,x*3,'r');
xlabel('n');
ylabel('sin pi n');
title('upscaling (amplification) signal');
grid on;


