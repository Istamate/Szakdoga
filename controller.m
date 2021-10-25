%% PID discrete making
%% constants
T = 0.05;
Ti = 3*T;
Ap = 3/T/T;
Td = 3/(Ap*T-3/10);
Tc = Td/10;

%% controller in continous and discrete
sys = (3/T^2)*tf([(Td^2*9*T^2/10) (3*Td*T/10) 1],[(3*T*Td/10) (3*T) 0]);
sysd = c2d(sys,0.01,'zoh');
C_pid = pid(sysd)