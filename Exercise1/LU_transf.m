function output = LU_transf(A,b)
  n = length(A);
  L = eye(n);
  U = zeros(n);
  
  U(1,:) = A(1,:)/L(1,1);
  L(2:n,1) = A(2:n,1)/U(1,1);
  for i=2:n
    for j=i:n
      U(i,j) = (A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i);
    endfor
    for j=i+1:n
      L(j,i) = (A(j,i)-L(j,1:i-1)*U(1:i-1,i))/U(i,i);
    endfor  
  endfor  
  x = substitution(U,L,b);
  output = x;
endfunction