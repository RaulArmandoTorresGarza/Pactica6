function dx = tarea6(t,x)

% PARAMETROS
L = 2e-3;      % 2 mH
C = 10e-6;     % 10 uF
R = 10;        % 10 ohm
Uin = 32;      % 32 V

% PWM
f = 100e3;     % 100 kHz
T = 1/f;
D = 0.4;       % 40% duty

% Señal PWM
if mod(t,T) < D*T
    d = 1;
else
    d = 0;
end

% VARIABLES DE ESTADO
iL = x(1);
Vc = x(2);

% ECUACIONES DIFERENCIALES
diL = -(1/L)*Vc + (Uin/L)*d;
dVc = (1/C)*iL - (1/(R*C))*Vc;

% VECTOR DERIVADA
dx = [diL; dVc];

end