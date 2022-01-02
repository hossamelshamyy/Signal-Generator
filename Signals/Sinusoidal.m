function output = Sinusoidal(time)
prompt = 'Enter the Amplitude of the Sinusoidal signal: ';
amp = input(prompt);

prompt = 'Enter the Frequency of the Sinusoidal signal: ';
freq = input(prompt);

prompt = 'Enter the Phase of the Sinusoidal signal: ';
phase = input(prompt);

output = amp*sin(2*pi*time*freq + phase);

end

