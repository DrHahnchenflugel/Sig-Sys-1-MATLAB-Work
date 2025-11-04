function x_t = Lab3_A5(Dn_func, n_max, t, omega0)
    
    % Initialize the reconstructed signal vector
    x_t = zeros(size(t));
    
    % Summation from n = -N_max to n = N_max
    for n = -n_max:n_max
        
        % 1. Get the Fourier coefficient Dn
        Dn = Dn_func(n); 
        
        % 2. Calculate the component and add it to the total sum
        x_t = x_t + Dn .* exp(1j * n * omega0 * t); 
    end
    
    % Use real() to remove small imaginary components due to floating-point errors
    x_t = real(x_t); 
end