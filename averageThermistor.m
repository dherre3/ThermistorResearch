function res=averageThermistor(ard, time)
numsamples=5;
samples=zeros(5,1);
seriesresistor=9.99E3;
%ard.analogReference('external');
for i=1:numsamples
    samples(i)=ard.analogRead(0);
    pause(0.1);
end
average=mean(samples);
average=(1023/average)-1;
average=seriesresistor/average;
res=average;
end


    