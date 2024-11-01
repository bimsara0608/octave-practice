
clear all;
close all;
clc;


x1 = 0:0.2:2*pi;
x2 = 0:0.2:2*pi;
x = 0:0.2:2*pi;

y1 = sin(x1);
y2 = 0.5 * cos(x2 - (pi/4));
y = y1.*y2;

subplot(3,1,1);
stem(x1,y1);
xlabel('x1');
ylabel('y1');
title('original signal y1');
grid on;

subplot(3,1,2);
stem(x2,y2,'r');
xlabel('x2');
ylabel('y2');
title('original signal y2');
grid on;

subplot(3,1,3);
stem(x,y,'g');
xlabel('x');
ylabel('y');
title('multiplication');
grid on;




