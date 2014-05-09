function [error]=errorResFromPin(resistance, e_out)
%Input: resistanceValues obtained, and discretization error in measurement
%Output:Complete error in resistance from the voltage to pin error, and the
%       discretization error
pinValue=resistance./((resistance+10000)*674.024);
error=sqrt(((674.024*pinValue)./((pinValue-674.024).^2)).^2+e_out.^2);