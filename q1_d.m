close all;
clear all;
clc;

x = [1, 2, 3, 4, 5];
h = [5, 8, 3, 5, 4, 6];

y = conv(x, h);

x_shifted = circshift(x, 1);
h_shifted = circshift(h, 1);

z_shifted = conv(x_shifted, h_shifted);

n_y = 1:length(y);
n_z_shifted = 1:length(z_shifted);

figure;
subplot(2,1,1);
stem(n_y, y, 'b', 'DisplayName', 'y[n]');
title('convoluted signal');
xlabel('n');
ylabel('Amplitude');
legend;

subplot(2,1,2);
stem(n_z_shifted, z_shifted, 'r', 'DisplayName', 'z_shifted');
title('shifted z[n]');
xlabel('n');
ylabel('Amplitude');
legend;
grid on;
hold off;

%
