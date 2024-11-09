clear all;
close all;
clc;

function [x,n] = stepseq(n0,n1,n2)
%Generates x(n)=f(n-n0); n1 <= n <= n2
n = [n1:n2];
x = [(n-n0) >= 0];
end

function [xe,xo,m] = evenodd(x,n)
%Real signal decomposition into even & odd parts
m = -fliplr(n);
m1 = min([m,n]); m2 = max([m,n]);
m = m1:m2;
nm = n(1)-m(1); n1 = 1:length(n);
x1 = zeros(1,length(m)); x1(n1+nm) = x; x = x1;
xe = 0.5*(x + fliplr(x)); xo = 0.5*(x - fliplr(x));
end

n0 = 0;
n1 = 0;
n2 = 10;

[x1, n] = stepseq(n0, n1, 10); #f[n]
[x2, ~] = stepseq(10, n1, 10); #f[n-10]
x = x1 - x2; # x[n]

[~, xo, m] = evenodd(x, n); #odd part

[h, n] = stepseq(0, n1, n2);
h = (0.9).^n .* h;

y = conv(x, h); #convolution

y_odd = conv(xo, h); #odd part convolution
ny_odd = m(1) + n(1) : m(end) + n(end); #range


figure;
subplot(3, 1, 1);
stem(m, xo,'r');
title('odd Part of Input Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
stem(n, h, 'b');
title('Impulse Response h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
stem(ny_odd, y_odd, 'g');
title('Output Signal');
xlabel('n');
ylabel('Amplitude');
grid on;
