% Koeficienti funkcije, ki jo minimiziramo
f = [92 89 90 91 91 95 87 90 92];

% Matrika in vektor, kjer je relacija <=
A = [1 1 1 0 0 0 0 0 0; 0 0 0 1 1 1 0 0 0; 0 0 0 0 0 0 1 1 1];
b = [320000 270000 190000];

% Matrika in vektor, kjer je relacija =
Aeq = [1 0 0 1 0 0 1 0 0; 0 1 0 0 1 0 0 1 0; 0 0 1 0 0 1 0 0 1];
beq = [100000 180000 350000];

% X so kolicine kupljenega goriva, fval pa strosek
% (zeros(1, 9) - LB, zelis nenegativne resitve)
[x, fval] = intlinprog(f, [], A, b, Aeq, beq, zeros(1, 9));
% Vrne v stilu:
% x =
%            0
%            0
%       320000
%            0
%       120000
%            0
%       100000
%        60000
%        30000
%
% fval = 56580000