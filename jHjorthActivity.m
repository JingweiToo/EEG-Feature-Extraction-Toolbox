%[2018]-"A Novel Multi-Class EEG-Based Sleep Stage Classification System"
%(3)

function HA = jHjorthActivity(X,~) 
sd = std(X); 
HA = sd ^ 2;
end