function output = newton_raphson(xo,tol,maxIter, err='abs')
  error = 10 * tol;
  k = 0;
  while error >= tol & maxIter >= k
    b = -F(xo);
    A = jacobian(xo);
    Ah = b;
    x = xo + h;
    
    if err == 'abs'
      error = max(abs((h)));
    else
      error = max(abs((h) ./ x));     
    endif   
    xo = x;
    k = k + 1;
  endwhile
  output = x;  
endfunction