function output = Ramp(time)
prompt = 'Enter the Amplitude of the signal: ';
amp = input(prompt);

prompt = 'Enter the intercept of the Ramp signal: ';
intercept = input(prompt);

output = amp*time + intercept;

end

