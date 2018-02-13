function output = piv_partial(M)
  n = length(M);
  aux_M = M;
  for i = 1 : n - 1
    [MAX, POSMAX] = max(abs(aux_M(i:end,i)));
    aux_M(i,:) = aux_M(POSMAX + i - 1,:);
    aux_M(POSMAX + i - 1,:) = M(i,:);
    M = aux_M;
  endfor
  output = M;
endfunction