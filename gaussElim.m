function [x, l] = gaussElim(x)
% Autor: Mikhail Yushkevich.
% Funkcja stosuje algorytm eliminacji Gaussa do macierzy x.

l = zeros(size(x, 1), size(x, 2));
for j = 1:size(x, 2)
    for i = 1:size(x, 1)
        if(i <= j)
            if(i == j)
                l(i, j) = 1;
            end
            continue
        end
            l(i, j) = x(i, j) / x(j, j);
            x(i, :) = x(i, :) - l(i, j)*x(j, :);
    end
end

end % function