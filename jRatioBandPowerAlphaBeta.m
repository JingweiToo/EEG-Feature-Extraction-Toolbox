
function RBA = jRatioBandPowerAlphaBeta(X,opts)
% Parameters         
f_low1  = 8;       % 8 Hz
f_high1 = 12;      % 12 Hz

f_low2  = 12;      % 12 Hz
f_high2 = 30;      % 30 Hz

% sampling frequency 
if isfield(opts,'fs'), fs = opts.fs; end

% Band power alpha
BPA = bandpower(X, fs, [f_low1 f_high1]);
% Band power beta
BPB = bandpower(X, fs, [f_low2 f_high2]);
% Ratio beta/alpha
RBA = BPB / BPA;
end

