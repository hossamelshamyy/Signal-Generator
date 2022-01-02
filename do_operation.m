function do_operation(time, signal,operation)
signal_modifed = signal;
time_modified = time;
% Amplitude Scaling
if strcmp(operation, '1')
    prompt = 'Enter the value of amplification: ';
    amp = input(prompt);
    signal_modifed = amp*signal;
    % Time Reversal
elseif strcmp(operation,'2')
    time_modified = -1.*time;
    % Time Shift
elseif strcmp(operation,'3')
    prompt ='Enter the value of the shift: ';
    shift = input(prompt);
    time_modified= time+shift;
    % Expanding the Signal
elseif strcmp(operation,'4')
    prompt ='Enter the value of Expantion: ';
    expan = input(prompt);
    time_modified= expan*time;
    % Compressing the Signal
elseif strcmp(operation,'5')
    prompt ='Enter the value of Compression: ';
    comp = input(prompt);
    time_modified = time./comp;
end

figure(2)
plot(time_modified,signal_modifed)
title('After Operations Signal')
grid on;


end

