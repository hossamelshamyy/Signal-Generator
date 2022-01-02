clc;clear;

%Ask user to enter the smaple rate then start and end of the time scale
prompt = 'Enter the sample rate : ';
sample_rate = input(prompt);

prompt = 'Enter the start : ';
st = input(prompt);

prompt = 'Enter the end : ';
en = input(prompt);

% Generate the time axis given sample rate and start and end of the time
time = linspace(st,en,(en - st)*sample_rate );


%Ask the user to enter number of break points
prompt = 'Enter number of break points : ';
num_break_points = input(prompt);

positions = zeros(1, num_break_points);

%Ask the user to enter the number of break points and their positions
i=1;
while(i <= num_break_points)
    prompt = 'Enter positons of break points : ';
    position = input(prompt);
    %Make sure the position is in the range of the time 
    if (position < en && position > st)
        positions(i) =position;
        i = i +1;
    else
        fprintf('Incorrect position!\n');
    end
end

fprintf('------------------------------------------------------------------\n');
% get the signal
signals = generate_signals(st,en,sample_rate,positions,num_break_points);

% ploting the signal
figure(1)
plot(time,signals)
title('Original Signal')
grid on;

fprintf('------------------------------------------------------------------\n');

% ask for modifications on the signal
while(1)
fprintf('Enter number of the operation you want to do\n');
fprintf('1)Amplitude Scaling\n2)Time reversal\n3)Time shift\n4)Expanding the signal\n5)Compressing the signal\n0)Exit without doing operations\n');

operation = input('','s');

if strcmp('0',operation)
    break
end
do_operation(time,signals,operation);


end
    