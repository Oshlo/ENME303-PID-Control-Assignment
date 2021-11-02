clear; clc;
format compact

%% Load Lab Data

% Monday Lab Apparatus 1
    % P = 16.4; D = 0; I = 0
    Lab1Set1A1 = load("Mon 22nd\acf60_p1").acf60_p1;
    % P = 100; D = 0; I = 0
    Lab1Set2A1 = load("Mon 22nd\acf60_p2").acf60_p2;
    % P = 105; D = 10; I = 0;
    Lab1Set3A1 = load("Mon 22nd\acf60_pd1").acf60_pd1;
    % P = 100; D = 50; I = 0;
    Lab1Set4A1 = load("Mon 22nd\acf60_pd2").acf60_pd2;
    % P = 75; D = 0; I = 200;
    Lab1Set5A1 = load("Mon 22nd\acf60_pi1").acf60_pi1;
    % P = 50; D = 5; I = 200;
    Lab1Set6A1 = load("Mon 22nd\acf60_pid1").acf60_pid1;

% Monday Lab Apparatus 2
    % P = 100; D = 0; I = 0;
    Lab1Set1 = load("Mon 22nd\acf60p1").acf60p1;
    % P = 105; D = 10; I = 0;
    Lab1Set2 = load("Mon 22nd\acf60pd1").acf60pd1;
    % P = 50; D = 5; I = 200;
    Lab1Set3 = load("Mon 22nd\acf60pid1").acf60pid1;
    

% Tuesday Lab Apparatus 2
    % P = 118; D = 9; I = 9;
    Lab2Set1 = load("Tue 23rd\acf60pid").acf60pid;
    % P = 110; D = 9; I = 6;
    Lab2Set2 = load("Tue 23rd\acf60pid2").acf60pid2;
    % P = 110; D = 5; I = 6;
    Lab2Set3 = load("Tue 23rd\acf60pid3").acf60pid3;
    % P = 115 D = 7; I = 6;
    Lab2Set4 = load("Tue 23rd\acf60pid4").acf60pid4;
    
%% Plot Data

% Choose Gain Set to Plot
Data = Lab2Set1;

% Set Variables
t = Data.X.Data(1:5000) - 2.399;
CartPosition = Data.Y(1).Data(1:5000);
CartVelocity = Data.Y(2).Data(1:2000);
PositionCommand = Data.Y(3).Data(1:5000);
MotorVoltage = Data.Y(4).Data(1:2000);
P = Data.Y(7).Data(1);
I = Data.Y(6).Data(1);
D = Data.Y(5).Data(1);

max(MotorVoltage)

tiledlayout(3,1)
 
% Top plot
%ax1 = nexttile;

plot(t, PositionCommand, t, CartPosition, "r--")
xlabel("Time (s)")
ylabel("Position (m)")
legend("Position Command", "Cart Poisition")
grid on

% % Mid plot
% ax2 = nexttile;
% plot(ax2, t, CartVelocity)
% title(ax2, "Cart Velocity")
% xlabel(ax2, "Time (s)")
% ylabel(ax2, "Velocity (m/s)")
% 
% % Bottom plot
% ax3 = nexttile;
% plot(ax3, t, MotorVoltage)
% title(ax3, "Motor Voltage")
% xlabel(ax3, "Time (s)")
% ylabel(ax3, "Voltage (V)")


