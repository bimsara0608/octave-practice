clear all;
close all;
clc;
%{
x1 = [1, 2, 3];
n0 = 2;
n = 0:length(x1) + (n0 - 1);
x2 = zeros(1, length(n));
x2(n >= n0) = x1(n(n >= n0)-n0 + 1);
stem(n, x2);
title('Signals');
xlabel('n');
ylabel('Amplitude');
grid on;

%----------------------b---------------------


x1 = [1, 2, 3];
n0 = 2;
n = 0:length(x1) + (n0 - 1);
x2 = zeros(1, length(n));
x2(n >= n0) = x1(n(n >= n0) - n0 + 1);
y = x2;

stem(n, y);
title('Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

%---------------------c-----------------


x1 = [1, 2, 3];
n0 = 2;
n = 0:length(x1) + (n0 - 1);
x2 = zeros(1, length(n));
x2(n >= n0) = x1(n(n >= n0) - n0 + 1);
y = x2;
stem(n, y);
title('Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

%}
%----------------d---------------------

x1 = [1, 2, 3];
n0 = 2;
n = 0:length(x1) + (n0 - 1);
x2 = zeros(1, length(n));
x2(n >= n0) = x1(n(n >= n0) - n0 + 1);
y = x2;

stem(n, y);
title('Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

