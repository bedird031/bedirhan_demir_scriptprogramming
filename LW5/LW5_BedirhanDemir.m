clc; clear;

A = [1 2 3; 4 5 6];
C = num2cell(A);
disp(C);
disp(cellfun(@isempty,C));

while true
    n = input('Enter age (0-120): ');
    if n >= 0 && n <= 120
        break;
    end
    disp('Invalid age');
end

if n < 1
    disp('Newborn');
elseif n < 13
    disp('Child');
elseif n < 18
    disp('Teenager');
elseif n < 60
    disp('Grownup');
else
    disp('Elder');
end

x = input('Enter x (1-5): ');
y = input('Enter y (1-5): ');
A = zeros(y,x);

for k = 1:30
    A(randi(y),randi(x)) = NaN;
    disp(A);
    pause(1);
    clc;
end