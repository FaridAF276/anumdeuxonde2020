close all
clear all
clc


%% Declaration des variables
global z k n D1v D1w D1 dz fz;

% Definition des parametres
k = 10; 
tmax= 1;
dt=0.1;
z0 = -0.5;
zL = 0.5;
n = 501;

% Creation de la grille spatio temporelle
dz = (zL - z0)/(n - 1);
z = z0:dz:zL;
z = z';
t= 0:dt:tmax;

% Approximation de la derivee seconde
%D1v = two_point_upwind_D1(z,1);
%D1w = two_point_upwind_D1(z,-1);
%D1v = three_point_centered_D1(z);
%D1w = three_point_centered_D1(z);
%D1v = three_point_upwind_D1(z,1);
%D1w = three_point_upwind_D1(z,-1);
%D1 = five_point_centered_D1(z);
%D1v = D1;
%D1w = D1;
D1v = five_point_biased_upwind_D1(z,1);
D1w = five_point_biased_upwind_D1(z,-1);
%D1v = four_point_upwind_D1(z,1);
%D1w = four_point_upwind_D1(z,-1);
%D1v = four_point_biased_upwind_D1(z, 1);
%D1w = four_point_biased_upwind_D1(z, -1);

% Conditions initiales (vecteur initial)
v0 = zeros (length(z),1);
w0 = zeros (length(z),1);
bi = (-0.3-z0)*(n-1)+1;
bs = (-0.1-z0)*(n-1)+1;
v0(bi:bs) = 0.5*(1+cos(10*pi*z(bi:bs)));
%v0(bi:bs) = 1;
bi = (0.1-z0)*(n-1)+1;
bs = (0.3-z0)*(n-1)+1;
w0(bi:bs) = 0.5*(1+cos(10*pi*z(bi:bs)));
%w0(bi:bs) = 1;
u0 = [v0;w0];
%% Initiation de Ode

%options=odeset('RelTol',1e-5,'AbsTol',1e-5,'stats','on','jpattern', sparse (spones([eye(n) + spones(D2), eye(n); eye(n),  eye(n)])));
options=odeset('RelTol',1e-5,'AbsTol',1e-5,'stats','on', 'JPattern', Jpattern());
options=odeset('RelTol',1e-5,'AbsTol',1e-5,'stats','on');

%% Lancement du chronometre
tic
%% Appel de Ode (Ode45 ici)
[tout, yout] = ode45(@Impulse,t,u0,options);
%fz
%% Receuil de yout (on laisse tomber)
vyout = yout (:,1:n);
wyout = yout(:,n+1:2*n);
%% Arret et lecture du chronometre
tcpu=toc;
tcpu

%% Visualisation graphique
%Visualizer(z,t,vyout);
Visualizer2d(z,yout);





