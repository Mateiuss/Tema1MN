function L = get_L (A, n)
  L = zeros(1, n);
  
  for i = 1 : n
    L(1, i) = sum(A(i, :) == 1);
  endfor
endfunction
