
function  Visualizer(z,t,yout)
  clf;
  
  #Creation de la grille
  #[xx, yy] = meshgrid (z,t); 
  mesh(z,t,yout);

  title ("Amplitude d'un signal à partir d'une impulsion d'amplitude 0.15 en z = 25 appliquée entre t=0 et t=2");
  xlabel "z (position)";
  ylabel "t (temps)";
  zlabel "v (amplitude du signal)";

endfunction
