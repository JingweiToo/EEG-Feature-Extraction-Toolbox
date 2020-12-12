%[2018]-"Improved binary dragonfly optimization algorithm and wavelet
%packet based non-linear features for infant cry classification" (4)

function ReEn = jRenyiEntropy(X,opts) 
% Parameter
alpha = 2;     % alpha

if isfield(opts,'alpha'), alpha = opts.alpha; end

% Convert probability using energy
P    = (X .^ 2) ./ sum(X .^ 2);
% Entropy 
En   = P .^ alpha; 
ReEn = (1 / (1 - alpha)) * log2(sum(En)); 
end

