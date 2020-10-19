function y = september2008_2(x)
    y = -(x(1) - x(2))^2 - (x(3) - 1)^2 - 1 - 0.02*(x(1)^5 + x(2)^5 + x(3)^5 - 16)^2;
end