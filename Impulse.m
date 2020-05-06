function [ ut ] = Impulse(t, u)

    %% Définitions des variables
    global n z D1; 
    %% Separation du vecteur initiale en v et w
    v = u(1:n) ;
    w = u(n+1:2*n);
    
    %% Conditions aux limites 
    v(1) = 0;
    v(n) = 0;
    w(1) = 0;
    w(n) = 0;
    %% Calcul iteratif(réponse directement inseree dans vecteur)
    ut = [-0.5*D1*v + v.*w ; 0.5*D1*w - v.*w];
end