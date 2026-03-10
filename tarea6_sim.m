clc
clear
close all

% TIEMPO DE SIMULACION
tspan = [0 0.002];

% CONDICIONES INICIALES
x0 = [0 0];

% SOLUCION ODE45
[t,x] = ode45(@tarea6, tspan, x0);

% VARIABLES
iL = x(:,1);
Vc = x(:,2);

% GRAFICAS
figure

subplot(2,1,1)
plot(t,iL,'LineWidth',2)
grid on
title('Corriente del inductor i_L(t)')
xlabel('Tiempo (s)')
ylabel('i_L (A)')

subplot(2,1,2)
plot(t,Vc,'LineWidth',2)
grid on
title('Voltaje del capacitor V_o(t)')
xlabel('Tiempo (s)')
ylabel('V_o (V)')