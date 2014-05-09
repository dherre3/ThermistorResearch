function [out, e_out, temp, e_temp] = thermistorTemp (ard, time)

series_resistance = 10000;
now = cputime;
count = 1;
ADCslope=4.782E-3;
ADCoffset=7.757E-3;
sum1=0;
sum2=0;
sumsq2=0;
sumsq=1;
%readings = zeros(time*1000,1);
% out_pin = 9;
while(cputime < now+time)
    
%     if(1)
%         ard.digitalRead(out_pin);
%     end
    readings(count) = ard.analogRead(0);
    sum1=sum1+readings(count);
    readings2(count)=ard.analogRead(1);
    sum2=sum2+readings2(count);
    sumsq=sumsq+readings(count)*readings(count);
    sumsq2=sumsq2+readings2(count)*readings2(count);
    count = count+1;
    pause(0.01);
end
mr = sum1/(count-1);
mu2=sum2/(count-1);
sigma2=sqrt((sumsq2-sum2*mu2)/(count-1));
sigma=sqrt((sumsq-sum1*mr)/(count-1));
vThermo=ADCslope*mu2+ADCoffset;
eVThermo=ADCslope*sigma2;
temperature=100*vThermo;
e_temperature=eVThermo * vThermo;
mr = 674.024./mr  - 1;
mr = series_resistance./mr;
out=mr;
e_out=sigma;
temp=temperature;
e_temp=e_temperature;

end
