%% basic variables
m1  = 5;
m2  = 4;

g=9.81;

lc1     = 0.25;
lc2     = 0.2;

l1  = 0.5;
l2  = 0.4;

I1  =0.108333;
I2  =0.056667;

%C2  =
%C12 = C1*C2
%S1  =
%S2  =

%% alpha parameters
alp1    =(m1*lc1^2) + (m2*(l1^2+lc2^2)+I1+I2);
alp2    =m2*l1*lc2;
alp3    =(m2*lc2^2) + I2;
alp4    =g*(m1*lc1+m2*l1);
alp5    =g*m2*lc2;

%% D variables
%D11     =(alp1) + (2*C2*alp2)
%D12     =(alp3) + (C2*alp2)
%D22     =alp3

%D112    =-S2*alp2
%D122    =-S2*alp2
%D1      =(C1*alp4)+(C12*alp5)
%D2      =C12*alp5

%% Y variables
