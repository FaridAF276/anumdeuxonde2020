function [out] = KTflux(~,~,x)
  n = length(x);
  v = x(:,1);
  w = x(:,2);
  out(1:n,1)=-v;
  out(1:n,2)=w;
end