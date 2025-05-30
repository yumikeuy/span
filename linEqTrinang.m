function x = linEqTrinang(A, b)
% Author: Mikhail Yushkevich
% Funkcja rozwiązuje układ równań liniowych typu Ax=b, gdzie A jest
% macierzą górno-trójkątną.

s = size(A, 1); % rozmiar macierzy A
x(s) = b(s)/A(s, s); % ostatni x

for j = s-1:-1:1 % pętla od końca wektora x
    sum = 0;
    for i = s:-1:j+1
        sum = sum + A(j, i)*x(i); % suma elementów wiersza razy x
    end
    x(j) = (b(j) - sum) / A(j, j);
end

end % function