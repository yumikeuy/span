function x = gaussElim(x)
% Autor: Mikhail Yushkevich.
% Funkcja stosuje algorytm eliminacji Gaussa do macierzy x.

for j = 1:size(x, 2)
    for i = 1:size(x, 1)
        if(i <= j)
            continue
        end
            l = x(i, j) / x(j, j);
            x(i, :) = x(i, :) - l*x(j, :);
    end
end

end % function