
function Jpattern = JP()

    global B1 B2 D2 n;
    
    %% Definition de la Jacobienne pour option Jpattern
    Jpattern = spones([eye(n) + D2, eye(n); eye(n),  eye(n)]);

end