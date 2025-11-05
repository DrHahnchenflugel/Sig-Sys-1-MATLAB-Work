% Lab3_A3 Code
function D = Dn(x, n)
  D = zeros(size(n));
  % Initialize output array
  switch x
    case 'x1'
      D = (1 ./ 2) .* (( 1 ./ (pi .* n)) .* sin((3 - n) .* pi)) + (1 ./ pi .* n) .* sin((3 + n) .* pi) + (1 ./ (2 .* n .* pi) .* sin((1 + n) .* pi)) + (1 ./ (2 .* n .* pi) .* sin((1 - n) .* pi));
    case 'x2'
      D = (1 ./ (n .* pi) .* sin((n .* pi) ./ 2));
    case 'x3'
      D = (1 ./ (n .* pi) .* sin((n .* pi) ./ 4));
    end
end
