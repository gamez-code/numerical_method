# Resolucion de sistemas de ecuaciones lineales. 
function output = Gauss_jordan(A,b)
  n = length(A);
  M = [A,b];
  # Diagonalizacion
  M = diagonalization(M);
  # Solucion
  for i= 1 : n
    x(i,1) = M(i,end)/M(i,i);
  endfor
  output = x;  
 endfunction