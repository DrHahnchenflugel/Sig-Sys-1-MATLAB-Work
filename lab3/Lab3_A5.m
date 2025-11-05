function x_t = Lab3_A5(Dn_func, n_max, omega0, t)

    % Summation from n = -N_max to n = N_max
    n = -n_max:n_max;

    % Exponential terms for all n and all t
    E = exp(1j * omega0 * (n .' * t));

    % Fourier coefficients Dn
    D = Dn(Dn_func, n);

    % Use real() to remove small imaginary components due to floating-point errors
    x_t = real(D * E);
end
