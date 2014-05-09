function [temperature, a, a_error, error]=thermalTimePlot(timeThermal, readingsThermal)
%This functions plots the time and the resistance readings, using
%out calibration for the temperature of the thermistor
%
%Input: Time between each measurement, the pin measured values
%Output: Plot of temperature vs. time for the thermistor
%        Thermal time constant for the Thermistor

series_resistance=10000;
resistance = 674.024./readingsThermal  - 1;
resistance = series_resistance./resistance;
a=0.832*1.40E-3;
b=0.8986*2.37E-4;
c= 3.091 *9.90E-8;
aError=0.05*1.40E-3;
bError=0.05*2.37E-4;
cError= 0.65*9.90E-8;
temperature=1./((a)+(b*log(resistance))+(c*(log(resistance).^3)));
errorRes=18.7863;
error=(-(b+3*c*(log(resistance).^2))./(resistance.*(a+b*log(resistance)...
    +c*(log(resistance).^3)).^2))*errorRes;
a =       7.315;
b =       1.939;
c =       41.09;
a_error=0.021;
b_error=0.003;
c_error=0.02;
tempCurve=-20*b*exp(-timeThermal/(a))+310+c;
errorbar(timeThermal, temperature, error, '.');
hold on;
plot(timeThermal, tempCurve, 'r--');
title('Zero-Power Temperature Curve Thermistor');
xlabel('Time(s)');
ylabel('Temperature(K)');
legend('Data', 'Temperature Curve');

