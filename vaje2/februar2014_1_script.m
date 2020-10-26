resitve = []; % Seznam najdenih resitev
for i=1:1000
    % Pozene iskanje s nakljucnim vektorjem velikosti 1x4 (uposteva omejitev -10 <= x(i) <= 10)
    [x, fval, flag] = fminsearch(@(x)testf4(x), 20*rand(1,4)-10);
    if flag == 1 % Vkljuci samo dobre resitve
        resitve = [resitve; [x fval]];
    end
end