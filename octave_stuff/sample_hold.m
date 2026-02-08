% fuck electrical engineering



clc; % clears the command window
clear; % clears the variable storage
close all; % cloes any open plots and stuff

t = 0:0.0001:0.1; % start:step:=end

x = sin(2*pi*50*t);

Fs = 1000;
Ts = 1 / Fs;

n = 0:Ts:0.1;

figure;
xs = sin(2*pi*50*n); % pi, sin are builtin
plot(t,x,'blue', 'LineWidth',10);

hold on;
stem(n,xs,'red');


% some graph stuff
grid on;
xlabel('Time (seconds)');
ylabel('Amplitude (seconds)');
title("Sample and Hold Circuit");

% legend follows the order from above what is plotted which is nice i think
legend("Analog Signal",  "samples", "S/H outout");

pause;


