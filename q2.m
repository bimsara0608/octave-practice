%Q2


%Plot the given sinusoidal signal given signal in the range 0 ≤ t ≤ 0.1 s

f = 1000;  %freaquency
t = 0 : 1/f : 0.1; %time
x_t = 1/3 * sin(2 * pi * 20 * t);

L = 7;
x_min = min(x_t);
x_max = max(x_t);

q_step = (x_max - x_min) / (L - 1);
x_quant = round((x_t - x_min) / q_step) * q_step + x_min;

q_error = x_t - x_quant;
mean_q_error = mean(abs(q_error ));
fprintf('Mean Quantization Error: %f\n', mean_q_error);

%{
figure;
plot(t, x_t, 'b');
hold on;
stairs(t, x_quant, 'r');
xlabel('Time');
ylabel('Amplitude x_t');
title('Original and Quantized Signal');
legend('Original Signal', 'Quantized Signal');
grid on;%}





