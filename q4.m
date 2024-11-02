F1 = 100;                    % Frequency of x(t)
F2 = 600;                    % Frequency of y(t)
Fs = 500;                    % Sampling frequency
t = linspace(0, 0.04, Fs);             % Time vector

x_t = 2 * cos(2 * pi * F1 * t + pi/3);
y_t = 2 * cos(2 * pi * F2 * t + pi/3);

sampling_index = 1:20;

x_sampled = 2 * cos(2 * pi * F1 *(sampling_index / Fs) + pi/3);         % Sampled values of x(t)
y_sampled = 2 * cos(2 * pi * F2 *(sampling_index / Fs) + pi/3);         % Sampled values of y(t)

figure;
plot(t, x_t, 'b', t, y_t, 'r--');        % Plot original signals
hold on;

stem(sampling_index / Fs, x_sampled, 'bo', 'filled'); % Plot sampled x(t) using blue circles
hold on;
stem(sampling_index / Fs, y_sampled, 'ro'); % Plot sampled y(t) using red circles
xlabel('Time');
ylabel('Amplitude');
title('Original and Sampled Signals of x(t) and y(t)');
legend('Original x(t)', 'Original y(t)', 'Sampled x(t)', 'Sampled y(t)');
grid on;
