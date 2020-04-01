close all
clear all


%% Declaration des variables
global z k n D1 dz;


% Definition des parametres
k = 10; 
tmax= 1;
pas=0.1;
z0 = -0.5;
zL = 0.5;
n = 51;

% Creation de la grille spatio temporelle
dz = (zL - z0)/(n - 1);
z = z0:dz:zL;
z = z';
t=0:pas:tmax;
t = t';

% Approximation de la derivee seconde
#D2 = three_point_centered_D2(z);
#D2 = five_point_centered_D2(z);
#D2 = seven_point_centered_D2(z);
D1 = three_point_centered_D1(z);

% Conditions initiales (vecteur initial)
v0 = zeros (length(z),1);
w0 = zeros (length(z),1);
u0 = [v0;w0];

%% Initiation de Ode

#options=odeset('RelTol',1e-5,'AbsTol',1e-5,'stats','on','jpattern', sparse (spones([eye(n) + spones(D2), eye(n); eye(n),  eye(n)])));
options=odeset('RelTol',1e-5,'AbsTol',1e-5,'stats','on');

%% Lancement du chronometre
tic

%% Appel de Ode (Ode45 ici)
[tout, yout] = ode45(@Impulse,t,u0,options);


%% Receuil de v (on laisse tomber w)
vyout = yout (:,1 :length(z));
wyout = you(:,length(z)+1:2*length(z))
%% Arret et lecture du chronometre
tcpu=toc;
tcpu

%% Visualisation graphique
Visualizer(z,t,yout);




