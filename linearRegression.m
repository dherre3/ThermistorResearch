function [res,errorM,errorB]=linearRegression(x,y,error)
[row, cols]=size(y);
%Calculates the values for the Linear Regression Fit
for i=0:255
    err=error(i+1)^2;
    alpha1(i+1)=1/err;
    gamma2(i+1)=y(i+1)/err;
    beta3(i+1)=x(i+1)/err;
    lambda4(i+1)=(x(i+1)^2)/err;
    row5(i+1)=(x(i+1)*y(i+1))/err;
end
alpha=sum(alpha1);
gamma=sum(gamma2);
beta=sum(beta3);
lambda=sum(lambda4);
row=sum(row5);
M=[alpha beta;beta lambda];
b=[gamma;row];
res=linsolve(M,b);
invM=inv(M);
errorM=sqrt(invM(1,1));
errorB=sqrt(invM(2,2));
%Finds the Model for the data
yMod=res(2)*x+res(1);
%Plotting the Model and the Data
plot(x,y,'LineStyle','+');
hold on;
plot(x,yMod,'r--');
legend('Data', 'LR fit to data');
xlabel('Voltage(v)');
ylabel('Pin Output');
chi_square=sum(((res(1)+res(2)*x-y)./error).^2./cols);
display(chi_square);
end

