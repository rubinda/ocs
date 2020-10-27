resitve = []; % Seznam najdenih resitev
for i=1:100
    % Pozene iskanje s nakljucnim vektorjem velikosti 1x4 (uposteva omejitev -10 <= x(i) <= 10)
    [x, fval, flag] = fminsearch(@(x)februar2014_1(x), 20*rand(1,4)-10);
    if flag == 1 % Vkljuci samo dobre resitve
        resitve = [resitve; [x fval]];
    end
end
% resitve =
%    -4.5601   -5.3684    7.9907    8.1739         0
%     2.0729   -2.6953    1.9718    3.3697         0
%     7.8913   -8.2533    0.7802   -1.4310         0
%     2.3431    1.1775   -5.4830   -7.9096         0