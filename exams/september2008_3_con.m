function [c, ceq] = september2008_3_con(x)
    % Cleni imajo spremenjen predznak, prestavilo pa smo se 4 iz leve na desno stran (ostane pozitivna)
    c = [-x(1)^2 -2*x(2)^2 - x(3)^2 + 4];
    ceq = [];
end