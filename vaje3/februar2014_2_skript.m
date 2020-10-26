resitve = [];
n = 3; % Vrednost n iz navodil
for i=1:20 % Veckrat poisci resitev
    [x, fval, flag] = fmincon(@(x)-februar2014_2(x), rand(1,n), [], [], [], [], zeros(1,n), ones(1,n), @(x)februar2014_2_con(x));
    if flag == 1
       % Pomnozi resitev z obratno vrednost (maksimum) in koren od n na n 
       resitve = [resitve; [x -fval]];
    end
end
% (vse vrstice enake):
% resitve = 0.5774    0.5774    0.5774    1.0000