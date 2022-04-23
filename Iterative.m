function R = Iterative(nume, d, eps)
  [A n] = test_get_An(nume);
  L = get_L(A, n);
  M = get_M(A, L, n);
  
  R = ones(n, 1) / n;
  last_R = zeros(n, 1);
  
  while norm(R - last_R) > eps
    last_R = R;
    R = d * M * last_R + (1 - d) / n * ones(n, 1);
  endwhile
  
  printf('%d\n%.06f\n', n, R);
endfunction
