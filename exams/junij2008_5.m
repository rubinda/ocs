% Koeficienti funkcije
f = [ 2 3 5 6 8 8];
% Matrika A, obrnemo predznak
A = [-20 -30 -40 -40 -45 -30; -50 -30 -20 -25 -50 -20; -4 -9 -11 -10 -9 -10];
% Vektor b (desna stran omejitev) tudi obrnemo predznak
b = [-70 -100 -20];
% Aeq in beq sta prazna, prav tako ne potrebujemo celostevilskih resitev, nastavimo pa se spodnjo mejo
[x, fval] = intlinprog(f, [], A, b , [], [], zeros(1, 6))
% Vrne v stilu:
% x = 0.9091
%     1.8182
%          0
%          0
%          0
%          0
% fval = 7.2727