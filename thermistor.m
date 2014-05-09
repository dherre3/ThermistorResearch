function out = thermistor (ard, time)

series_resistance = 10000;
now = cputime;
count = 1;
%readings = zeros(time*1000,1);
% out_pin = 9;

while(cputime < now+time)
    
%     if(1)
%         ard.digitalRead(out_pin);
%     end
    readings(count) = ard.analogRead(0);
    count = count+1;
    pause(0.1);
end
mr = mean(readings);

mr = 674.024./mr  - 1;
mr = series_resistance./mr;


out=mr;
end
