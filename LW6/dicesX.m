function diceX(n)
% DICEX Simulates rolling a dice.
% ROLLS Generates random integers between 1 and 6.
% The matrix has 1 row and n columns.

rolls = randi(6, 1, n);
disp(rolls);

end
