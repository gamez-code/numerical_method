function output = diagonalization(M)
  n = length(M);
  M = piv_partial(M);
  for i = 1 : n - 1
    for j = 1 : n - 1
      if j!=i
        M(j,:) = M(j,:) - M(i,:) * M(j,i) / M(i,i);
      endif
    endfor
  endfor
  output = M;
endfunction