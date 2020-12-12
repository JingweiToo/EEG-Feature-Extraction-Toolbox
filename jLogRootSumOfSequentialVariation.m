%[2018]-"A Novel Multi-Class EEG-Based Sleep Stage Classification 
%System" (11)

function LRSSV = jLogRootSumOfSequentialVariation(X,~)
N = length(X); 
Y = zeros(1, N-1);
for i = 2:N
  Y(i-1) = (X(i) - X(i-1)) ^ 2;
end
LRSSV = log10(sqrt(sum(Y)));
end
