function [readings, time] = thermalTime (a, count)
for i=1:count
readings(i) = a.analogRead(0);
readings(i)
time(i)=cputime;
time(i)
end 