% Koeficienti cenitvene funkcije
f = [13, 27, 41, 55];

% Omejitve (leva stran)
A = [1, 2, 3, 4];
% Omejitve (desna stran)
b = [21];
intcon = ones(4);

% Maksimiziramo, zato dodamo '-' pred f, intcon so indeksi celostevilcnih
% spremenljivk, A, b so omejitve (samo teza), zeros na koncu pa predstavlja
% nenegativnost (ne moremo voziti -N izdelkov)
[x, fval, flag] = intlinprog(-f, 1:4, A, b, [], [], zeros(1, 4));
% Vrne fval = -288
% x = [1.0, 0, 0, 5.0]
