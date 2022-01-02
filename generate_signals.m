function signals = generate_signals( st,en,sample_rate,positions,num_break_points )

if (num_break_points > 0)
    times = [st positions en];
else
    times = [st en];
end

signals = [];
j = 1;
while(j <= num_break_points+1)
    
    time = linspace(times(j),times(j+1), (times(j+1) - times(j))*sample_rate);
    
    fprintf('\nEnter the %d portion function type \n',j);
    fprintf('Enter first character of any function of the following \nSinusoidal, DC, Ramp, Exponential, Ploynomial :- \n')
    signal_name = input('','s');
    
    signal = 0;
    if strcmp(signal_name , 's')
        signal = Sinusoidal(time);
        
    elseif strcmp(signal_name, 'd')
        signal = DC(time);
        
    elseif strcmp(signal_name, 'r')
        signal = Ramp(time);
        
    elseif strcmp(signal_name, 'e')
        signal = Exponential(time);
        
        
    elseif strcmp(signal_name, 'p')
        signal = Polynomial(time);
        
    end
    signals = [signals, signal];
    
    j = j +1;
    
end
end
