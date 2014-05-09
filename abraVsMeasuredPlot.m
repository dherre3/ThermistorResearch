function abraVsMeasuredPlot
%1
%
%
%
 a=0.8174*1.40E-3;
 b=0.9561*2.37E-4;
 c= 1.62*9.90E-8;
 aError=0.02*1.40E-3;
 bError=0.02*2.37E-4;
 cError=0.35*9.90E-8;
 aAbra =1.40E-3*0.8318;
 bAbra =2.37E-4*0.9617;
 cAbra =9.90E-8*1.18;
 aAbraError=1.40E-3*0.0018;
 bAbraError=2.37E-4*0.0036;
 cAbraError=9.90E-8*0.045;
 x=400:1:5.34E3;
 yAbra=1./((aAbra)+(bAbra*log(x))+(cAbra*(log(x).^3)));
 yMod2=1./((a)+(b*log(x))+(c*(log(x).^3)));
 plot(x,yMod2,'b--');
 hold on;
 plot(x, yAbra,'r--');
a=1.029*1.40E-3;
b=0.6873*2.37E-4;
c= 5.552*9.90E-8;
aError=0.008*1.40E-3;
bError=0.012*2.37E-4;
cError= 0.15*9.90E-8;
x1=400:1:7.00E3;
%error=errorResFromPin(x, error);
yMod=1./((a)+(b*log(x1))+(c*(log(x1).^3)));
plot(x1,yMod,'k--'); 
 %herrorbar(x, y, error);
 
 