% Calculate Shannon entropy
function H = entropy(d)

% Convert string to ASCII code 
if ischar(d), 
    d=abs(d); 
end;

% Find unique elements 
[Y,I,J] = unique(d);
% Generate sparse matrix 
E = sparse(J,1,1);
% Define the probability distribution
p = full(E(E>0))/length(d);
% Calculate Shannon Entropy
H = -sum(p.*log2(p));
% Add normalized entropy!!!!!!
end