function output = jacobiano(xo)
  n = length(xo)
  step = max(xo,1)
  for i = 1 : n
    step1 = zeros(n,1);
    step1(i) = step(i);
    J(:,i) = (F(xo + step1) - F(xo - step1)) / (2 * step(i))
  endfor
endfunction