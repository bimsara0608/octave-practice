
clear all;
close all;
clc;

A = 1;
theta = 0;
f = 1/2;
omega  = (2*pi*f);

n = 0:0.1:2;

x = sin((omega * n) + theta);
delay = 0.5;
n_delayed = n + delay;


subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('sin pi n');
title('original signal');
grid on;

subplot(3,1,2);
stem(n,-x,'r');
xlabel('n');
ylabel('sin pi n');
title('folded signal');
grid on;

subplot(3,1,3);
stem(n_delayed,-x,'r');
xlabel('n');
ylabel('sin pi n');
title('folded + delayed signal');
grid on;
