clear all;
close all;
clc;

#---------------

x = [1,2,3,4,5];
h = [1,2,3,1];

y = conv(x,h);

x_n = length(x);
h_n = length(h);

X = [x, zeros(1, x_n)];

H = [h, zeros(1, h_n)];

X_n = length(X);
H_n = length(H);

Y_length = X_n + H_n - 1;

Y = zeros(1, Y_length);

for i = 1:x_n
    for j = 1:h_n
        Y(i + j - 1) = Y(i + j - 1) + X(i) * H(j);
    end
end

figure;
subplot(2,1,1);
stem(y,'r');
title('Convolution Result of Sequences x and h');
xlabel('Index');
ylabel('Amplitude');
subplot(2,1,2);
stem(Y,'b');
title('Convolution Result of Sequences X and H');
xlabel('Index');
ylabel('Amplitude');
grid on;
