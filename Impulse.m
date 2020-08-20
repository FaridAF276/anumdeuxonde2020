function [ ut ] = Impulse(t, u)

    %% Définitions des variables
    global n z D1v D1w fz; 
    %% Separation du vecteur initiale en v et w
    t;
    v = u(1:n);
    w = u(n+1:2*n);
    
    %size(xx)
    %% Conditions aux limites 
    v(1) = 0;
    v(n) = 0;
    w(1) = 0;
    w(n) = 0;
    xx = [v, w];
    %% Slope limiter
    fz= KT_centered_limiter_fz_order1(2,n,z,t,xx,@KTflux,@KTdfluxdx);
    vx = fz(:,1);
    wx = fz(:,2);
    %% Calcul iteratif(réponse directement inseree dans vecteur)
    
    %%Case no slope limiter
    %vt = - 0.5*D1v*v - v.*w;
    %wt= 0.5*D1w*w - v.*w;
    
    %%Case slope limiter
    vt = 0.5*vx - v.*w;
    wt = 0.5*wx - v.*w;
    
    %%writing ut
    ut = [vt;wt];
end