function heatCapacity(temp117, temp90, temp70, time117, time90, time70)
x=120:500;
aTemp117 =       1.207;%  (1.206, 1.208);
bTemp117 =       16.58;%  (16.52, 16.64);
cTemp117=       3.443; % (3.297, 3.588);
y117=92.73*aTemp117*exp(-x/(30*bTemp117))+298+cTemp117;
aTemp90 =       1.119;  %(1.109, 1.129);
bTemp90 =       10.91;  %(10.71, 11.11);
cTemp90 =       3.636;  %(2.79, 4.483);
y90=71.64*aTemp90*exp(-x/(46*bTemp90))+298+cTemp90;
aTemp70 =     0.8705  ;%(0.8649, 0.8761);
bTemp70 =       11.41;  %(11.26, 11.56);
cTemp70 =       1.94;  %(1.466, 2.413); 

y70=71.64*aTemp70*exp(-x/(46*bTemp70))+298+cTemp70;
plot(time117(1:100), temp117(1:100), 'r.');
hold on;
plot(time90, temp90, 'g.');
hold on;
plot(time70, temp70, 'b.');
plot(x,y70,'c--');
plot(x,y90,'y--');
plot(x,y117,'k--');
hold off;
