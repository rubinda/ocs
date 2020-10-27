function [c, ceq] = februar2014_3_con(x)
    c = [-x(3) -x(4) + 12 ]; % manjse ali enako imamo v drugem delu naloge
    % Omejitve za trikotnike (pitagorov izrek)
    ceq = [x(3)^2 + x(1)^2 - 100; x(4)^2 + x(2)^2 - 100]; %  iammo samo tipa je enako
end