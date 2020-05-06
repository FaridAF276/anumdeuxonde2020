
function  Visualizer2d(z,yout)
  global n
  clf;
  vyout = yout (:,1:n);
  wyout = yout(:,n+1:2*n);
  figure(1);
  plot(z,vyout);
  title ("Amplitude du signal v observée entre t=0 et t=1");
  xlabel "z (position)";
  ylabel "v (amplitude du signal)";
  figure(2);
  plot(z,wyout);
  title ("Amplitude du signal w observée entre t=0 et t=1");
  xlabel "z (position)";
  ylabel "v (amplitude du signal)";

  
endfunction
