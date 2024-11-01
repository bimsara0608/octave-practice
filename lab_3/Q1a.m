clear alll;
close all;
clc;

n = -4:4;
%{
%---------a------------

impulse = (n==0);
stem(n, impulse);
xlabel('n');
ylabel('impulse');
title('unit impulse signal');
grid on;

%--------b--------------
n = -4:4;

stepsignal = (n >= 0);
stem(n, stepsignal);
xlabel('n');
ylabel('stepsignal');
title('unit stepsignal signal');
grid on;

%--------c--------------
n = -4:4;

expo = exp(-(3/2)*n);

stem(n, expo);
xlabel('n');
ylabel('expo');
title('exponential signal');
grid on;

%---------d-------------
n = -4:4;

ramp = n.*(n>=0);

stem(n, ramp);
xlabel('n');
ylabel('ramp');
title('ramp signal');
grid on;

%----------e------------

x1=[1,2,3,4,5,6];

x2=[2,3,4,0,0,0];

addition = (x1 + x2);

figure;
hold on;


stem(x1,'r');
xlabel('n');
ylabel('x1');
title('input x1 signal');
grid on;


stem(x2,'g');
xlabel('n');
ylabel('x2');
title('input x2 signal');
grid on;


stem(addition);
xlabel('n');
ylabel('addition');
title('addition signal');
grid on;
hold off;





%----------f------------

x1=[1,2,3,4,5,6];

x2=[2,3,4,0,0,0];

mul = (x1 .* x2);

figure;
hold on;


stem(x1,'r');
xlabel('n');
ylabel('x1');
title('input x1 signal');
grid on;


stem(x2,'g');
xlabel('n');
ylabel('x2');
title('input x2 signal');
grid on;


stem(mul);
xlabel('n');
ylabel('multiplication');
title('multiplication signal');
grid on;
hold off;
%}

%-----------g-------------

x = [5,4,3];

n1 = 3;
n2 = 5;

n_original = 0:length(x)-1;
n_positive = [zeros(1,n1),x];
n_negative = x;
n_negative = [n_negative, zeros(1,n2)];



subplot(3,1,1);
stem(n_original,'r');
xlabel('n');
ylabel('x1');
title('original signal');
grid on;

subplot(3,1,2);
stem(n_positive,'r');
xlabel('n');
ylabel('x1');
title('positive signal');
grid on;

subplot(3,1,3);
stem(n_negative,'g');
xlabel('n');
ylabel('x2');
title('negative signal');
grid on;
















