% Imamo podan graf
% A = [0 10 7 8; 0 0 5 4; 0 5 0 10; 0 4 0 0]
% g = digraph(A, {'A', 'B', 'C', 'D'})
% namig: [mf, gf] = maxflow(g, 1, 4)

% Cenitvena funkcija ... povezave v SINK
f = [0 0 1 0 1 0 1];

% Omejitve za vmesna vozlisca
Aeq = [1 0 0 -1 -1 1 0; 0 1 0 1 0 -1 -1];
beq = [0 0];

LB = zeros(1, 7);
% Peljemo lahko le toliko toka kot je dovoljeno na povezavi x_i
UB = [10 7 8 5 4 5 10];
[x, fval, flag] = intlinprog(-f, 1:7, [], [], Aeq, beq, LB, UB);
% Vrne fval = -22
% x = [7 7 8 3 4 0 10], moznih je vec resitev