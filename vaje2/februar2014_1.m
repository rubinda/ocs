function y = februar2014_1(x)
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    sum4 = 0;
    for i=1:5
        sum1 = sum1 + i * cos((i+1) * x(1) + i);
        sum2 = sum2 + i * cos((i+1) * x(2) + i);
        sum2 = sum2 + i * cos((i+1) * x(3) + i);
        sum2 = sum2 + i * cos((i+1) * x(4) + i);
    end
    % Vrni zmnozek vsot
    y = sum1 * sum2 * sum3 * sum4;
end