clc;
clear;
close all;

x = 0:1:34;

F1 = x.^2;
F2 = 0.25*x.^2;

figure;
plot(x, F1, 'r-o', 'LineWidth', 1);
hold on;
plot(x, F2, 'b-x', 'LineWidth', 1);

title('Dvi funkcijos');
xlabel('X-as');
ylabel('F1(x), F2(x)');

xlim([0 35]);
ylim([0 1200]);

legend('F1(x)', 'F2(x)');
grid off;
hold off;