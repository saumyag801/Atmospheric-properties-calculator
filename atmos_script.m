clc
clear all
close all

H = input('Enter the value of altitude in km, H=');
h = H*1000; % altitude in m
% Mean Sea Level Values
T0 = 288;   % temp. at MSL in K
P0 = 101325; % pressure at MSL in pa
Rho0 = 1.2256;  % density at MSL in kg/m^3

L = 0.0065;   % Lapse rate in Troposphere (K/m)
R = 287;      % Characteristic Gas constant (J/Kg-K)
g = 9.807;    % acceleration due to gravity (m/s^2)

mu0 = 1.714*10^-5; % dynamic viscosity coeff. at 273K

if h<=11000
%***********************************
% Tropospheric calculations (h<=11km)
%***********************************
disp('Tropospheric Data');
% Eq(i)
T = T0-L*h    
%Eq(ii)
P = P0*(T/T0)^(g/(L*R))
%Eq(iii)
Rho = P/(R*T)
sigma = Rho/Rho0  %Relative density

else
%***************************
% Stratospheric Calculations
%***************************
disp('Stratospheric Data');
Ps = 22604.144; %Pr. at tropopause and in Lower stratosphere
Ts = 216.5;   % Temp. at tropopause and in Lower stratosphere
T = Ts
P = Ps*exp(-g*(h-11000)/(R*Ts))
Rho = P/(R*T)
sigma = Rho/Rho0  %Relative density
end
mu = mu0*(T/273)^0.75  % Rayleigh formula for a  viscosity of air
