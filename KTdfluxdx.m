function [out] = KTdfluxdx(ne,t,x)
  n = length(x);
  out(1:n,1,1)= .5;
  out(1:n,1,2)= 0;
  out(1:n,2,1)= 0;
  out(1:n,2,2)= -.5;
end
