function [error]=errorAnalRes(readings) 
%This function calculates the spread in measurements of resistance at a
%given temperature
%Input:The readings from resistance values at room temperature
%Output:The spread of the data
length=size(readings, 2);
mu=sum(readings)/size(readings,1);
error=(readings-mu*ones(1,length)).^2;
error=error/length;
error=sqrt(sum(error));
