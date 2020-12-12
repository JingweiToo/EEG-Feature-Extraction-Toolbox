%  Electroencephalogram (EEG) Feature Extraction toolbox

%---Input-------------------------------------------------------------
% X    : EEG signal (1 x samples)
% opts : parameter settings
% 

%---Output------------------------------------------------------------
% feat:  Feature vector 
%---------------------------------------------------------------------


%% Generate a sample random signal X
fs = 500;             % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.5; 
X  = 0.01 * (sin(2 * pi * fs * t) + randn(1, length(t)));

% Plot sample signal
plot(t,X);  grid on
xlabel('Number of samples');
ylabel('Amplitude');


%% Example 1 : Extract 3 normal features ( without parameter ) 
% Generate a sample random signal X
fs = 500;             % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.5; 
X  = 0.01 * (sin(2 * pi * fs * t) + randn(1, length(t)));

% Hjorth Activity
f1 = jfeeg('ha', X); 
% Hjorth Mobility
f2 = jfeeg('hm', X); 
% Hjorth Complexity
f3 = jfeeg('hc', X); 

% Feature vector
feat = [f1, f2, f3];


%% Example 2 : Extract 2 features with parameter   
% Generate a sample random signal X
fs = 500;             % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.5; 
X  = 0.01 * (sin(2 * pi * fs * t) + randn(1, length(t)));

% Band Power Alpha
opts.fs = 500;
f1 = jfeeg('bpa', X, opts); 
% Tsallis Entropy
opts.alpha = 2;
f2 = jfeeg('te', X, opts);

% Feature vector
feat = [f1, f2];

