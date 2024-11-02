A = 3;                     % Amplitude in Volts
f = 50;                    % Frequency in Hz
Fs = 10000;                % Sampling rate
t = 0:1/Fs:0.05;           % Time vector

x_t = A * sin(2 * pi * f * t);


Fs_80 = 80;                    % Sampling rate of 80 Hz
t_80 = 0:1/Fs_80:0.05;         % Time vector

x_80 = A * sin(2 * pi * f * t_80);

grid on;

Fs_100 = 100;                   % Sampling rate of 100 Hz
t_100 = 0:1/Fs_100:0.05;

x_100 = A * sin(2 * pi * f * t_100);

Fs_500 = 500;                    % Sampling rate of 500 Hz
t_500 = 0:1/Fs_500:0.05;


x_500 = A * sin(2 * pi * f * t_500);



figure;
subplot(3,1,1);
plot(t, x_t, 'b');              % Original signal in blue
hold on;
title('comparison of 2 quantized signals');
stem(t_80, x_80, 'r');  % Sampled signal at 80 Hz in red

subplot(3,1,2);
stem(t_100, x_100, 'g');% Sampled signal at 100 Hz in green
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('100 Hz');
grid on;

subplot(3,1,3);
stem(t_500, x_500, 'm');
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('500 Hz');

