function mat=Jpattern ()
  global D1v D1w n


  mat = sparse(spones([spones(D1v)+eye(n);spones(D1w)+eye(n)]));
endfunction
