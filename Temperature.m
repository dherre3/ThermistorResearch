function T = Temperature(ard, n)
t0 = 25.1;
e_t0 = 0.05;
r0 = 10028;
e_r0 = 1;
rfixed = 9990;
e_rfixed = 1;
B = 3950;
e_B = 40;


timing_default = 1;

rinf = r0*exp(-B/t0);

R = thermistor(ard,timing_default);

T = B/(log(R/rinf));



    