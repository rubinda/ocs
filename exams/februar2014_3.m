function y = februar2014_3(x)
    % Enacba za volumen, kjer je:
    % x1 ... h1
    % x2 ... h2
    % x3 ... R1
    % x4 ... R2
    y = pi * (x(1) + x(2)) / 3 * (x(3)^2 + x(4)^2 + x(3)*x(4));
end