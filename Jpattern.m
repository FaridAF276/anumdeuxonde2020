function mat=Jpattern ()
  global D1 n

##  s=D1
##  %Elements diagonaux = 1
##  s(1:length(s)+1:numel(s))=1;
##  %Elements non null de D1 = 1
##  s(s!=0) = 1;
##  mat=parse([s;s])
  mat = sparse(spones([spones(D1)+eye(n);spones(D1)+eye(n)]));
##   mat(mat1)=1;
##   mat;
endfunction
