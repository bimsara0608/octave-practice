clear all;
close all;
clc;

n = 4;
cuttoff =100;
sampling_freq = 1000;

wc = cuttoff/(sampling_freq/2);
[b, a] = butter (n, wc, "low");

t = 0:1/sampling_freq:1
signal = sin(2*pi*50*t)+0.5*randn(size(t));


subplot(2,1,1)
plot(t,signal)

subplot(2,1,2)
y = filter (b, a, signal)
plot(t,y,'r')
grid on;
