function [a, b, c, aError, bError, cError, chi_square]=curveRegressionTempResisUp(x,y,error)
%Input: Temperature, Resistance values, and error in resistance values 
%Output: Values for chi-square and plots of model plus data
a=1.029*1.40E-3;
b=0.6873*2.37E-4;
c= 5.552*9.90E-8;
aError=0.008*1.40E-3;
bError=0.012*2.37E-4;
cError= 0.15*9.90E-8;
x1=400:1:7.00E3;
%error=errorResFromPin(x, error);
yMod=1./((a)+(b*log(x1))+(c*(log(x1).^3)));
yMod2=1./((a)+(b*log(x))+(c*(log(x).^3)));
plot(x1,yMod,'r--'); 
hold on;
herrorbar(x,y,error);
legend('Steinhart-Hart fit','Data');
xlabel('Resistance');
ylabel('Temperature(K)');
chi_square=sum(((yMod2-y)./error).^2);
%display(chi_square);
end