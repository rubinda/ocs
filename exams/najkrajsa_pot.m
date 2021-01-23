function [x, fval] = najkrajsa_pot(c, i, j)
    % Spremenljivke so binarne, vsaka celica pove ce smo sli iz source
    % (stevilka vrstice) v sink (stevilka stolpca)
    f = reshape(c.', 1, []);
    % vrednost n (stevilo vrstic ali stolpcev, c je kvadratna matrika)
    n = max(size(c));
    
    % Omejitve so tipa = in pomenijo da moramo zaceti v vozliscu i, koncati
    % v j in da lahko v vozlisce odtece le toliko kolikor pritece
    Aeq = zeros(n, n*n);
    % Omjeitev source
    Aeq(1, (i-1)*n+1:i*n) = ones(1, n);
    % Omejitev sink je stolpec, zato loop
    for k=1:n
       Aeq(2, (k-1)*n+j) = 1;
    end
    % Preostale n-2 vrstice povejo za vsako vozlisce da je stolpec =
    % vrstici (pomeni da odtece toliko koliko odtece)
    line = 3;
    for k=1:n
        if k ~= i && k~=j
            for l=1:n
                Aeq(line, (l-1)*n+k) = 1;
                Aeq(line, (k-1)*n+l) = -1;
            end
            line = line+1;
        end
    end
    % Desna stran so enice za izvor in ponor in nicle za ostala
    beq = [1 1 zeros(1, n-2)];
    % Celostevilcne so vse spremenljivke
    intcon = 1:n*n;
    LB = zeros(1, n*n);
    UB = ones(1, n*n);
    [x1, fval] = intlinprog(f, intcon, [], [], Aeq, beq, LB, UB);
    
    % Izhod je enako velik kot vhodna matrika - pove katere povezave smo sli
    x = reshape(x1, n, n).'; 
end