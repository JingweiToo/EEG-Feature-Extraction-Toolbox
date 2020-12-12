
function BPT = jBandPowerTheta(X,opts)
% Parameters         
f_low  = 4;      % 4 Hz
f_high = 8;      % 8 Hz

% sampling frequency 
if isfield(opts,'fs'), fs = opts.fs; end

% Band power 
BPT = bandpower(X, fs, [f_low f_high]);
end

