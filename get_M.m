function M = get_M (A, L, n)
  M = zeros(n, n);
  
  for i = 1 : n
    M(i, :) = A(i, :) / L(1, i);
  endfor
  M = M';
endfunction
