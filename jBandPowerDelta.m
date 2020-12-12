
function BPD = jBandPowerDelta(X,opts)
% Parameters         
f_low  = 1;      % 1 Hz
f_high = 4;      % 4 Hz

% sampling frequency 
if isfield(opts,'fs'), fs = opts.fs; end

% Band power 
BPD = bandpower(X, fs, [f_low f_high]);
end

