function output = fixed_point_iter(xo,tol,maxIter, err='abs')
  error = 10 * tol;
  k = 0;
  while error >= tol & maxIter >= k
    x = equation(xo);
    if err == 'abs'
      error = max(abs((x - xo)));
    else
      error = max(abs((x - xo) ./ x));     
    endif   
    xo = x;
    k = k + 1;
  endwhile
  output = x;  
endfunction