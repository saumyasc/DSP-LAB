clc;
clf;

Am = input("Enter the maximum amplitude of the wave: ");
Fm = input("Enter the frequency of the wave (Hz): ");
Cy = input("Enter the number of cycles of the wave: ");

DutyCycle = 50;

% Time vector for square wave
t = 0 : (1/(50 * Fm)) : Cy/Fm;
Square_wave = Am * square(2 * pi * Fm * t, DutyCycle);

% Determine max and min amplitude values
max_amplitude = max(Square_wave);
min_amplitude = min(Square_wave);

% Set y-axis limits
y_min = min_amplitude - 1;
y_max = max_amplitude + 1;

% Subplot for discrete square wave
subplot(2, 1, 1);
stem(t, Square_wave, 'filled', 'LineWidth', 2);
title(sprintf('Discrete Square Wave (Frequency = %.2f Hz, Duty Cycle = %.1f%%)', Fm, DutyCycle));
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% Adjust y-axis limits
ylim([y_min y_max]);

% Subplot for continuous square wave
subplot(2, 1, 2);
plot(t, Square_wave, 'LineWidth', 2);
title(sprintf('Continuous Square Wave (Frequency = %.2f Hz, Duty Cycle = %.1f%%)', Fm, DutyCycle));
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
% Adjust y-axis limits
ylim([y_min y_max]);


