function [c, ceq] = februar2014_3_con(x)
    c = [12 - x(3) - x(4)]; % omejitev tipa manjse ali enako imamo v drugem delu naloge (za prvi del pustimo prazno)
    ceq = [x(3)^2 + x(1)^2 - 100; x(4)^2 + x(2)^2 - 100]; % omejitev tipa enako iz prvega dela (maks. stozec)
end