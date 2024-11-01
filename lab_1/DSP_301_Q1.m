
clear all;
close all;
clc;

A = 1;
theta = 0;
f = 1/2;
omega  = (2*pi*f);

n = 0:0.1:2;

x = sin((omega * n) + theta);

plot(n , x);
hold on;

stem(n ,x);
grid on





