M_c = 1.5; % Kg
K_m = 0.017; % V/rad/s
K_g = 3.7;
R = 1.5; % Ohms
r = 0.018; % m
D = 7;

B =(K_m*K_g)/(M_c*R*r);
C = (D/M_c) + ((K_m^2)*(K_g^2))/(M_c*R*(r^2));

% Gains
K_p = 100;
K_d = 5;
K_i = 200;

count = 0;

opt = stepDataOptions('StepAmplitude',0.1);

TF_num = [B*K_d B*K_p B*K_i];
TF_den = [1 (C+B*K_d) B*K_p B*K_i];
TF = tf(TF_num, TF_den);

roots(TF_den);


step(TF, opt)
grid on
title  `
legend("Simulated Responce")
TF1 = stepinfo(TF);