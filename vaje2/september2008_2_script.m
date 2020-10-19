% Seznam vseh resitev
s = [];
for i=1:100
    randX0 = 20 * rand(1, 3) - 10; % nakljucna zacetna tocka
    [x, fval, flag] = fminsearch(@(x)-september2008_2(x), randX0);
    if flag == 1
        % Dodaj pravilno resitev v seznam vseh
        s = [s; [x fval]];
    end
end
ss = sortrows(s, 4); % Sortiraj resitve po velikosti
ss(1:10,:) % izpisi prvih 10 vrstic
% Vrne 10 identicnih vrstic
% ans =
%     1.4963    1.4963    1.0000    1.0000