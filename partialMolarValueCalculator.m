% MohammadSina GhanbariPakdehi  -   December 2021
% This function Calculates the partial molar properties of a mixture 
% Before use, you have to install "Symbolic Math Toolbox" from www.mathworks.com
function [Result] = partialMolarValueCalculator()
    clear, clc
    syms x1
    syms x2
    f = input('Enter the equation: ');
    p = input('Enter the value of x1: ');
    q = 1-p;
    if (0<=p) && (p<=1)
        a = f - x1*diff(f,x2);
        b = f + x2*diff(f,x1);
        L = subs(b,x1,p);
        M1bar = subs(L,x2,q);
        J = subs(a,x1,p);
        M2bar = subs(J,x2,q);
        Result = [M1bar,M2bar];
    else
        Result = nan;
    end
end