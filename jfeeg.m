% Feature Extraction Toolbox by Jingwei Too - 12/12/2020

function feat = jfeeg(type,X,opts)
switch type
  case 'mcl'    ; fun = @jMeanCurveLength;
  case 'ha'     ; fun = @jHjorthActivity;
  case 'hm'     ; fun = @jHjorthMobility;
  case 'hc'     ; fun = @jHjorthComplexity;
  case '1d'     ; fun = @jFirstDifference;
  case 'n1d'    ; fun = @jNormalizedFirstDifference;
  case '2d'     ; fun = @jSecondDifference;
  case 'n2d'    ; fun = @jNormalizedSecondDifference;
  case 'me'     ; fun = @jMeanEnergy;
  case 'mte'    ; fun = @jMeanTeagerEnergy; 
  case 'lrssv'  ; fun = @jLogRootSumOfSequentialVariation;
  case 'te'     ; fun = @jTsallisEntropy;
  case 'sh'     ; fun = @jShannonEntropy; 
  case 'le'     ; fun = @jLogEnergyEntropy;
  case 're'     ; fun = @jRenyiEntropy; 
  case 'am'     ; fun = @jArithmeticMean;
  case 'sd'     ; fun = @jStandardDeviation;
  case 'var'    ; fun = @jVariance; 
  case 'md'     ; fun = @jMedian;
  case 'max'    ; fun = @jMaximum;
  case 'min'    ; fun = @jMinimum;  
  case 'ar'     ; fun = @jAutoRegressiveModel;
  case 'kurt'   ; fun = @jKurtosis;
  case 'skew'   ; fun = @jSkewness; 
  case 'bpd'    ; fun = @jBandPowerDelta; 
  case 'bpt'    ; fun = @jBandPowerTheta; 
  case 'bpa'    ; fun = @jBandPowerAlpha; 
  case 'bpb'    ; fun = @jBandPowerBeta; 
  case 'bpg'    ; fun = @jBandPowerGamma; 
  case 'rba'    ; fun = @jRatioBandPowerAlphaBeta; 
end
if nargin < 3
  opts = []; 
end
feat = fun(X,opts); 
end

