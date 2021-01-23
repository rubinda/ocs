% Koeficienti cenitvene funkcije
f = [45 17 21 30 14 18 19 31];
% Omejitve manjse ali enako
A = [1 0 0 0 1 0 0 0; 0 1 0 0 0 1 0 0; 0 0 1 0 0 0 1 0; 0 0 0 1 0 0 0 1];
b = [9 6 7 9];
% Omejitve enako
Aeq = [1 1 1 1 0 0 0 0; 0 0 0 0 1 1 1 1];
beq = [15 13];
% Nenegativnost, cela stevila
LB = zeros(1, 8);
intcon = 1:8;

[x, fval, flag] = intlinprog(f, intcon, A, b, Aeq, beq, LB);
% Vrne fval = 547
% x = [0 6 3 6 9 0 4 0], moznih je vec resitev