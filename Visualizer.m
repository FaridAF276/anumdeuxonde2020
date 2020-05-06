
function  Visualizer(z,t,yout)
  clf;
  
  #Creation de la grille
  #[xx, yy] = meshgrid (z,t); 
  mesh(z,t,yout);

  title ("Amplitude d'un signal observée entre t=0 et t=1");
  xlabel "z (position)";
  ylabel "t (temps)";
  zlabel "v (amplitude du signal)";

endfunction
