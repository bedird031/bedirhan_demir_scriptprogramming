clc; clear; close all;

%% Task 1 - Creating 2-D graphs
x = pi:0.2:3*pi;

f1 = x.^3 + tan(x);
f2 = exp(x);
f3 = exp(2*x);
f4 = exp(5*x);

figure;
f1(abs(cos(x)) < 0.05) = NaN;
plot(x,f1,'r-o');
title('f1(x) = x^3 + tan(x)');
xlabel('x'); ylabel('f1(x)');
axis tight; grid on;

figure;
plot(x,f2,'r-o',x,f3,'b-x',x,f4,'k-s');
title('Exponential functions');
xlabel('x'); ylabel('Function values');
legend('e^x','e^{2x}','e^{5x}','Location','best');
axis tight; grid on;

%% Task 2 - Specialized plots
marks = [8 6 9 7 8 5 6;
    6 8 6 9 7 6 8;
    9 7 8 6 9 8 7;
    7 9 7 8 6 7 9];

figure;

subplot(2,1,1);
bar(marks,'grouped');
title('Exam marks for each student');
xlabel('Students'); ylabel('Marks');
legend('Exam 1','Exam 2','Exam 3','Exam 4', ...
    'Exam 5','Exam 6','Exam 7','Location','northwestoutside');
axis([0.5 4.5 0 10]); grid on;

subplot(2,1,2);
bar(marks,'stacked');
title('Total exam marks for each student');
xlabel('Students'); ylabel('Total marks');
axis([0.5 4.5 0 70]); grid on;

%% Task 3 - Signal processing
t = 0:0.002:1.2;
s = 5*sin(2*pi*6*t) + 2.5*cos(4*pi*6*t);

rng(1);
signal = s + 1.5*randn(size(t));

U1 = 3;
U2 = 2;

selected = signal(signal > U1);
filtered = signal;
filtered(abs(filtered) < U2) = 0;

disp(numel(signal));
disp(numel(selected));
disp(numel(filtered));
disp(min(filtered));
disp(max(filtered));

%% Complementary Task - Signal graphs
[maxValue,maxIndex] = max(signal);
[minValue,minIndex] = min(signal);

figure;

subplot(2,1,1);
plot(t,signal,'-.',t,filtered,'-','LineWidth',1);
hold on;
yline(U1,'r-','LineWidth',1);
yline(-U1,'r-','LineWidth',1);
yline(U2,'b--','LineWidth',1);
yline(-U2,'b--','LineWidth',1);
title('Original and Filtered Signals');
xlabel('Time (s)'); ylabel('Voltage (V)');
legend('Original signal','Filtered signal', ...
    'U1','-U1','U2','-U2','Location','southwestoutside');
axis([0 1.2 min(signal)-1 max(signal)+1]);
grid on;

subplot(2,1,2);
stem(t(signal > U1),signal(signal > U1),'r','Marker','o');
hold on;
plot(t(maxIndex),maxValue,'ko','MarkerFaceColor','k');
plot(t(minIndex),minValue,'ko','MarkerFaceColor','k');
title('Original Signal Samples Above U1');
xlabel('Time (s)'); ylabel('Voltage (V)');
legend('Samples above U1','Maximum and minimum', ...
    'Location','southwest');
axis([0 1.2 min(signal)-1 max(signal)+1]);
grid on;
