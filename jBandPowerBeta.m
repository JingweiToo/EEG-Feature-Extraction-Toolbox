
function BPB = jBandPowerBeta(X,opts)
% Parameters         
f_low  = 12;      % 12 Hz
f_high = 30;      % 30 Hz

% sampling frequency 
if isfield(opts,'fs'), fs = opts.fs; end

% Band power 
BPB = bandpower(X, fs, [f_low f_high]);
end

