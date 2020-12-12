%[2014]-"A Comparative Study on Classification of Sleep Stage Based on
%EEG Signals Using Feature Selection and Classification Algorithms" (11)

function MTE = jMeanTeagerEnergy(X,~)
N = length(X); 
Y = 0;
for m = 3:N
  Y = Y + ((X(m-1) ^ 2) - X(m) * X(m-2));
end
MTE = (1 / N) * Y;
end

