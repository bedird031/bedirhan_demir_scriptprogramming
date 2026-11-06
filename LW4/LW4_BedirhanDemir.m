clc;
clear;
close all;

%% Mandatory Task 1(a)
[x,y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = sin(abs(x+y)/20).*exp(-abs(x+y));

figure;
surf(x,y,z);
shading interp;
colormap winter;
view(45,30);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('First 3D Surface');
grid on;

%% Mandatory Task 1(b)
theta = 0:0.05:2*pi;
r = 0:0.05:3;
[R,T] = meshgrid(r,theta);

x = R.*cos(T);
y = R.*sin(T);
z = 1 - 2*x.^2 - 3*y.^2;

figure;
surf(x,y,z);
shading interp;
colormap parula;
view(45,30);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('Second 3D Surface');
grid on;

%% Complementary Task
[x,y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = 1 - (x.^2 + y.^2);

figure;

% Contour
subplot(1,3,1);
surfc(x,y,z);
shading interp;
title('Contour');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

% Camlight
subplot(1,3,2);
surf(x,y,z);
shading interp;
camlight;
lighting gouraud;
title('Camlight');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

% Transparency
subplot(1,3,3);
surf(x,y,z);
shading interp;
alpha(0.5);
title('Transparency');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
