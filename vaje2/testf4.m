function y = testf4(x)

    sum1 = 0;
    sum2 = 0;
    for i=1:5
        sum1 = sum1 + i * cos((i+1) * x(1) + i);
        sum2 = sum2 + i * cos((i+1) * x(2) + i);
    end
    y = sum1 * sum2;
end