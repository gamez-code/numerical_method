function output = equation(vector)
  x = vector(1);
  y = vector(2);
  G1 = 4 - sqrt(5 - (y - 4)^2);
  G2 = sqrt(16 - x^2);
  output = [G1; G2];
endfunction