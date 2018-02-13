function [output1, output2] = relaxing(A,b,w,xo,tol,err='abs')
  n = length(b);
  D= diag(diag(A));
  error = 10*tol;
  k = 0;
  j = 1:n;
  x = xo;
  while error >= tol
    for i = 1 : n
      jt1 = 1:n;
      jt1(i) = [];
      
      jt2 = 1:i-1;
      if i < n
        jt3 = i + 1 : n;
        sumT3 = sum(A(i,jt3)*xo(jt3,1));
      else
        jt3 = 0;
        sumT3 = 0;
      endif
      
      sumT1 = sum(A(i,jt1)*xo(jt1,1));
      sumT2 = sum(A(i,jt2)*x(jt2,1));
      x(i,1) = ((1-w)*(b(i,1)-sumT1) + w*(b(i,1)-sumT2-sumT3)) / D(i,i);
    endfor
    if err == 'abs'
      error = max(abs((x - xo)));
    else
      error = max(abs((x - xo) ./ x));     
    endif
    xo = x;
    k = k + 1;
  endwhile
  output1 = x;
  output2 = k;
 endfunction
  