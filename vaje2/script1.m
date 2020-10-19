resitve = [];
for i=1:1000
    % Nakljucni klic od -10 do + 10
    [x, fval, flag] = fminsearch(@(x)testf4(x), 20*rand(1:2)-10);
    if flag == 1
        resitve = [resitve; [x fval]];
    end
end