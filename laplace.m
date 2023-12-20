clc;
clear all;
close all;
% --------------------- EQUATION 1 ----------------------- % specify the variable a, t and s as symbolic ones
% The syms function creates a variable dynamically
% and automatically assigns to a MATLAB variable
% with the same name
syms a t s
% define function f(t)
f=cos(a*t);
% laplace command to transform into
% Laplace domain function F(s)
F=laplace(f,t,s);
% Display the output value
disp('Laplace Transform of cos(at):') disp(F);
% --------------------- EQUATION 2 ----------------------- % to find the laplace transform of 1+2e^{(-t)}+3e^{(-2t)}
% specify the variable a, t and s
% as symbolic ones
syms a t s e
% define function f(t)
f=1+2*exp(-t)+3*exp(-2*t);
% laplace command to transform into
% Laplace domain function F(s)
F=laplace(f,t,s);
% Display the output value
disp('Laplace Transform of1+2e^{(-t)}+3e^{(-2t)}:') disp(F);