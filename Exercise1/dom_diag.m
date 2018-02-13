function [output1, output2 ]= dom_diag(A,b)
  n = length(A);
  aux_A = A;
  aux_b = b;
  for i = 1 : n
    [MAX, POSMAX] = max(abs(A(:,i)));
    aux_A(i,:) = A(POSMAX,:);
    aux_A(POSMAX,:) = A(i,:);
    aux_b(i,1) = b(POSMAX,1);
    aux_b(POSMAX,:) = b(i,1);
  endfor
  output1 = aux_A;
  output2 = aux_b;
endfunction