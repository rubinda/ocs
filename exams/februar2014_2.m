function y = februar2014_2(x)
    [~, n] = size(x); % Uporabi velikost vektorja za drug parameter
    y = sqrt(n)^n * prod(x); % Naredi produkt vseh elementov tega vektorja
end