function D = Dn1(n)
    if n == 1 || n == -1
        D = 0.25;
    elseif n == 3 || n == -3
        D = 0.5;
    else
        % Default case for any other value of n
        D = 0;
    end
end