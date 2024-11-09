
close all;
clear all;
clc;

x = [1, 2, 3, 4,5];
h = [5, 8, 3, 5, 4, 6];

x_n = 1:length(x);
h_n = 1:length(h);

figure;
subplot(3,1,1);
title('input signal x[n]');
stem(x_n, x, 'b');
xlabel('n');
ylabel('x_n');
legend('original signal');


#folded input signal
subplot(3,1,2);
stem(x_n, -x, 'r');
xlabel('n');
ylabel('x_n');
legend('folded signal');



subplot(3,1,3);
stem(h_n, h, 'r');
title('impulse signal h[n]');
xlabel('n');
ylabel('h_n');
legend('impulse signal h[n]');
grid on

#---------------------------------------------

y = conv(x,h);

y_n = 1:length(y);

subplot(3,1,4);
stem(y_n, y, 'g');
title('convoluted signal');
xlabel('n');
ylabel('y_n');
grid on

#------------------------------------------



