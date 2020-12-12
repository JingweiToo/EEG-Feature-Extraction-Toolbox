%[2014]-"Feature Extraction and Selection for Emotion Recognition from 
%EEG"

function NFD=jNormalizedFirstDifference(X,~)
T = length(X); 
Y = 0; 
for t = 1 : T - 1
  Y = Y + abs(X(t+1) - X(t));
end
FD  = (1 / (T - 1)) * Y; 
NFD = FD / std(X);
end