
clc;
clear;
close all;

%% Task 1 - Vectors
a = 1:2:34;
b = exp(a);
c = a ./ b;

disp(a);
disp(b);
disp(c);

%% Task 2 - Matrices
A = [pi/2, 3i; log2(2), 2*pi];
B = [exp(A(1,1)), exp(A(1,2))];

disp(A);
disp(B);
disp(sum(A,1));

%% Task 3 - Noisy signal
t = 0:0.002:1.2;
A = 5;
f = 6;
sigma = 1.5;

U = A*sin(2*pi*f*t) + sigma*randn(size(t));
U1 = 3;
U2 = 2;

figure;
plot(t,U);
hold on;
yline(U1,'r--');
yline(-U1,'r--');
yline(U2,'g--');
yline(-U2,'g--');
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy Signal');
grid on;
hold off;

%% Complementary Task - User input
A_input = input('Enter a vector: ');
B_input = repelem(A_input,4);

disp(B_input);
