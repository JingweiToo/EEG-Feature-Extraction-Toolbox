%[2017]-"Automated detection of focal EEG signals using features 
%extracted from flexible analytic wavelet transform" (8)

function LogEn = jLogEnergyEntropy(X,~)
% Entropy 
LogEn = sum(log(X .^ 2)); 
end

