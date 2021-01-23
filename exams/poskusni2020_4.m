% Tabela povezav iz navodil
c = [1000 24 9 13 8 36 4; 9 1000 12 3 31 7 75; 12 16 1000 11 5 9 23; 20 43 3 1000 22 18 21; 2 18 6 39 1000 18 13; 82 5 1 12 26 1000 7; 45 27 14 37 8 17 1000];

% Poisci pot iz 2 v 7
[x27, fval27] = najkrajsa_pot(c, 2, 7);
% Poisci pot iz 6 v 1
[x61, fval16] = najkrajsa_pot(c, 6, 1);

% Namig:
% g = digraph(c);
% [path, d] = shortestpath(g, 2, 7)