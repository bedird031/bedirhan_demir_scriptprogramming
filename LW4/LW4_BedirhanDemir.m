clc; clear; close all;

[x,y] = meshgrid(-2:0.1:2);
z = sin(abs(x+y)/20).*exp(abs(x+y));
figure; surf(x,y,z);
xlabel('x'); ylabel('y'); zlabel('f(x,y)');
title('f(x,y)'); view(90,0);

t = 0:0.1:2*pi;
r = 0:0.1:3;
[R,T] = meshgrid(r,t);
x = R.*cos(T); y = R.*sin(T);
z = 1-2*x.^2-3*y.^2;
figure; surf(x,y,z);
xlabel('x'); ylabel('y'); zlabel('f(x,y)');
title('f(x,y)'); view(45,45);

[x,y] = meshgrid(-2:0.1:2);
z = 1-(x.^2+y.^2);
figure; surf(x,y,z);
shading interp; camlight; lighting gouraud;
hold on; contour3(x,y,z,20,'k');
surf(x,y,z,'FaceAlpha',0.5);
xlabel('x'); ylabel('y'); zlabel('z');
title('z(x,y)');