function [temp, out, e_out, e_temp, times]=tempetureDataForCoeff(a, n)
out=ones(n,1);
e_out=ones(n, 1);
e_temp=ones(n,1);
temp=ones(n,1);
times=ones(n,1);
tic
 for i=1:n
      [out1, e_out1, temp1, e_temp1] = thermistorTemp (a, 1);
      out(i)=out1;
      e_out(i)=e_out1;
      e_temp(i)=e_temp1;
      temp(i)=temp1;
      times(i)=toc;
      temp(i)
 end
 
end