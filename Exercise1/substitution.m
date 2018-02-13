function output = substitution(U,L,b)
  n = length(L);
  
  v(1,1) = b(1,1) / L(1,1);
  # Sustitucion directa
  for i=2:n
    v(i,1) = (b(i,1) - L(i,1:i-1) * v(1:i-1,1)) / L(i,i);
  endfor
  # Sustitucion inversa
  x(n,1) = v(n,1) / U(n,n);
  for i=n-1:-1:1
    x(i,1) = (v(i,1)-U(i,i+1:n)*x(i+1:n,1))/U(i,i);
  endfor
  output = x;
endfunction