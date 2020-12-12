%[2014]-"Feature Extraction and Selection for Emotion Recognition from 
%EEG"

function NSD = jNormalizedSecondDifference(X,~)
T = length(X); 
Y = 0;
for t = 1 : T - 2
  Y = Y + abs(X(t+2) - X(t));
end
SD  = (1 / (T - 2)) * Y; 
NSD = SD / std(X);
end