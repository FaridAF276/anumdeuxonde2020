function [out] = KTflux(ne,t,x)
  n = length(x);
  out(:,1)=.5*x(:,1);
  out(:,2)=-.5*x(:,2);
end