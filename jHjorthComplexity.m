%[2018]-"A Novel Multi-Class EEG-Based Sleep Stage Classification System"
%(5)

function HC = jHjorthComplexity(X,~)
% First & second derivative
x0  = X(:);
x1  = diff([0; x0]);
x2  = diff([0; x1]);
% Standard deviation of first & second derivative 
sd0 = std(x0);
sd1 = std(x1);
sd2 = std(x2); 
% Complexity
HC  = (sd2 / sd1) / (sd1 / sd0);
end

