
clear all;
close all;
clc;

A = 1;
theta = 0;
f = 1/2;
omega  = (2*pi*f);

n = 0:0.1:2;

x = sin((omega * n) + theta);
advance = 2;
n_advance = n + advance;


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
stem(n_advance,-x,'r');
xlabel('n');
ylabel('sin pi n');
title('folded + advance signal');
grid on;
