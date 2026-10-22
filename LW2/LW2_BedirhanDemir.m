clc; clear; close all;

%% 1. Vectors
a = 1:2:34;
b = exp(a);
c = a./b;
disp(c.');

%% 2. Matrices
A = [pi/2, 3i; log2(2), 2*pi];
B = [exp(A(1,1)), exp(A(1,2))];
disp(A);
disp(B);
disp(sum(A));

%% 3. Noisy signal
t = 0:0.002:1.2;
s = 5*sin(2*pi*6*t) + 2.5*cos(4*pi*6*t);
n = 1.5*randn(size(t));
signal = s+n;

selected = signal(abs(signal)>3);
filtered = signal;
filtered(abs(filtered)<2) = 0;

disp(numel(signal));
disp(numel(selected));
disp(min(filtered));
disp(max(filtered));

figure;
plot(t,signal);
hold on;
yline(3,'r--'); yline(-3,'r--');
title('Noisy signal');
grid on;

figure;
plot(t,filtered);
title('Filtered signal');
grid on;

%% Complementary task
A_input = input('Enter vector A: ');
B_input = repelem(A_input,4);
disp('Generated B:');
disp(B_input);