function [ ut ] = Impulse(t, u)

    %% Définitions des variables
    global z D1; 
    %% Separation du vecteur initiale en v et w
    v = u(1:length (z))' ;
    w = u(length(z)+1:2*length(z))';
    
    %% Conditions aux limites 
    v (1) = 0;
    v(length(z)) = 0;
    w (1) = 0;
    w(length(z)) = 0;
    
    % Condition initiale
    
    %% Calcul iteratif(réponse directement inseree dans vecteur)
    ut = [-0.5*D1*v' + v*w' ; 0.5*D1*v' - v*w'];
end