function [out] = KTdfluxdx(~,~,~)
  global n
  % first equation
  out(1:n,1,1)= ones(n,1);
  out(1:n,1,2)= zeros(n,1);
  % second equation
  out(1:n,2,1)= zeros(n,1);
  out(1:n,2,2)= ones(n,1);
end
