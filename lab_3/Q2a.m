clear all;
close all;
clc all;

%-------------a---------------

x1 = [2, 3, 4];
x2 = [1, 2, 3];
a = 2;
b = 3;

x = (a .* x1) + (b .* x2);
n = 0:length(x)-1;

stem(n, x1,'r'); hold on;
stem(n, x2,'b');
stem(n, x,'g');
title('Signals');
xlabel('n');
ylabel('Amplitude');
grid on;

%-------------b------------------

x1 = [2, 3, 4];
x2 = [1, 2, 3];
s = 2;
y1 = x1.^2 + s;
y2 = x2.^2 + s;

stem(n, y1, 'r');
hold on;
stem(n, y2,'b');
legend('y1[n]', 'y2[n]');
title('Signal');
xlabel('n');
ylabel('Amplitude');


%------------c--------------------

x1 = [2, 3, 4];
x2 = [1, 2, 3];
a = 2;
b = 3;

x = (a .* x1) + (b .* x2);
n = 0:length(x)-1;

s = 2;
y1 = x1.^2 + s;
y2 = x2.^2 + s;


y =(a*y1)+ (b*y2);

stem(n, y1, 'filled', 'b');
hold on;
stem(n, y2, 'filled', 'r');
stem(n, y, 'filled', 'g');
title('Signals');
xlabel('n');
ylabel('Amplitude');
grid on;

%-------------d-----------------

x1 = [2, 3, 4];
x2 = [1, 2, 3];
a = 2;
b = 3;

x = (a .* x1) + (b .* x2);
n = 0:length(x)-1;

s = 2;
y1 = x1.^2 + s;
y2 = x2.^2 + s;
y = (a*y1) + (b*y2);

stem(n, x, 'b');
hold on;
stem(n, y, 'r');
legend('x[n]', 'y[n]');
title('Signals');
xlabel('n');
ylabel('Amplitude');
grid on;



%-------------e--------------


x1 = [1, 2, 3];
x2 = [2, 3, 4];
a = 1;
b = 2;

x = (a.*x1) + (b.*x2);
y1 = a.*x1;
y2 = b.*x2;
y = a.*y1 + b.*y2;
n = 0:2;
figure;

stem(n, x, 'r', 'DisplayName','x[n]');
hold on;
stem(n, y, 'b', 'DisplayName', 'y[n]');
xlabel('n');
ylabel('Amplitude');
title('signal');
grid on;
hold off;

