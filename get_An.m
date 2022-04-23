function [A n] = get_An (nume)
  fp = fopen(nume, 'r');
  
  n = fscanf(fp, '%d\n', 1);
  A = zeros(n, n);
  
  for i = 1 : n
    l = fscanf(fp, '%d', 1);
    v = str2num(fgetl(fp));
    
    for j = 1 : length(v)
      A(l, v(j)) = 1;
    endfor
    
    A(l,l) = 0;
  endfor
  
  fclose(fp);
endfunction
