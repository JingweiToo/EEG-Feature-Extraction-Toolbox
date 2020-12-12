
function BPA = jBandPowerAlpha(X,opts)
% Parameters         
f_low  = 8;      % 8 Hz
f_high = 12;     % 12 Hz

% sampling frequency 
if isfield(opts,'fs'), fs = opts.fs; end

% Band power 
BPA = bandpower(X, fs, [f_low f_high]);
end

