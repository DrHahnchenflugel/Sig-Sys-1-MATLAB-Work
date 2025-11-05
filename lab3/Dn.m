% Lab3_A3 Code
function D = Dn(x, n)
  D = zeros(size(n));
  % Initialize output array
  switch x
    case 'x1'
      D(n==3) = 1/2;
      D(n==-3)= 1/2;
      D(n==1) = 1/4;
      D(n==-1)= 1/4;
    case 'x2'
      D = (1 ./ (n .* pi) .* sin((n .* pi) ./ 2));
      D(n==0) = 0.5;

    case 'x3'
      D = (1 ./ (n .* pi) .* sin((n .* pi) ./ 4));
      D(n==0) = 0.25;
    end
end
