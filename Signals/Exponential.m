function output = Exponential(time)
prompt = 'Enter the Amplitude of the Exponential signal: ';
amp = input(prompt);

prompt = 'Enter the exponent of the signal: ';
exponent = input(prompt);

output = amp*exp(exponent*time);
end

