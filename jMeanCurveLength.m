%[2014]-"A Comparative Study on Classification of Sleep Stage Based on
%EEG Signals Using Feature Selection and Classification Algorithms" (13)

function MCL = jMeanCurveLength(X,~)
N = length(X); 
Y = 0;
for m = 2:N
  Y = Y + abs(X(m) - X(m-1));
end
MCL = (1 / N) * Y;
end

