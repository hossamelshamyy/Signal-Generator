function output = DC(time)

prompt = 'Enter the Amplitude of the DC signal : ';
amp = input(prompt);
le = length(time);
output = amp*ones(1,le);
end

