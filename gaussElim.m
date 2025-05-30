function x = gaussElim(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

for j = 1:size(x, 2)
    for i = 1:size(x, 1)
        if(i <= j)
            continue
        end
            l = x(i, j) / x(j, j);
            x(i, :) = x(i, :) - l*x(j, :);
    end
end