function output = Polynomial(time)
prompt = 'Enter the power of the Polynomial signal: ';
power = input(prompt);
i=1;
coeffenets = zeros(1, power+1);
output = 0;
while (i<=power+1)
    fprintf('Enter the coefficient of the %d term of the polynomial function : ',power-i+1);
    coeffenets(i)=input('');
    output=output+coeffenets(i)*time.^((power+1)-i);
    i=i+1;
end
end
