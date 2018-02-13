# Resolucion de sistemas de ecuaciones lineales. 
function output = Gauss(A,b)
  n = length(A);
  M = [A,b];
  # Triangularizacion superior
  for i = 1 : n
    for j = i + 1 : n
      M(j,:) = M(j,:) - M(i,:) * M(j,i) / M(i,i);
    endfor
  endfor
  # Sustitucion inversa
  x(n,1) = M(n, end) / M(n, n);
  for i = n - 1 : -1 : 1
    x(i,1) = (M(i,end) - M(i,i + 1:n) * x(i+1 : n, 1) )/ M(i,i);
  endfor
  output =  x;
 endfunction