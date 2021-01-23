% Cenitvena funkcija
f = [145 122 130 95 110 80 63 85 68 78 121 107 93 69 95 118 93 116 80 105 117 85 120 80 111];
% Omejitve tipa enako za vrstice in stolpce
Aeq = [ 
    1 1 1 1 1 zeros(1, 20);
    zeros(1, 5) ones(1,5) zeros(1, 15);
    zeros(1, 10) ones(1, 5) zeros(1, 10);
    zeros(1, 15) ones(1, 5) zeros(1, 5);
    zeros(1, 20) ones(1, 5);
    1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0;
    0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0;
    0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
];
% Desne strani so vedno 1
beq = [1 1 1 1 1 1 1 1 1 1];
% Iscemo celostevilske resitve in nenegativne
intcon = 1:25;
LB = zeros(1, 25);

[x, fval, flag] = intlinprog(f, intcon, [], [], Aeq, beq, LB);
% Vrne fval = 458
% x = [0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 0 0]