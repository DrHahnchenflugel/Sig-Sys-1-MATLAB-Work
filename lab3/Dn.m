% Lab3_A3 Code
function D = Dn(x, n)

% Initialize output array
switch x
    case 'x1'
        if n == 3 || n == -3
            D = 0.5;
        elseif n == 1 || n == -1
            D = 0.25;
        else
            D = 0;
        end
        fprintf('D_%d = %.3f\n', n, D);
end
clear D;
end
