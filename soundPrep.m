close all 
clear all 
clc

fs = 8000; % the sampling frequency
t25 = 0:1/fs:0.25;
t50 = 0:1/fs:0.50;
t75 = 0:1/fs:0.75;
A = 2*440;    % frequency of A5
AF = 2*439.96; % frequency of AFlat
B = 2*493.88; % frequency of B5
C = 2*261.63; % frequency of C5
D = 2*587.33; % frequency of D5
DF = 2*277.183; % frequency of D_Flat
E = 2*329.63; % frequency of E5
G = 2*392.00; % frequency of G5
FS = 2*369.99; % frequency of F#
FN = 2*349.22; % frequency of F_Natural
DS = 2*622.25; % frequency of D#

y = [sin(B*2*pi*t25) 0 sin(E*2*pi*t25) ...
0 sin(G*2*pi*t25) 0 sin(FS*2*pi*t25) ...
0 sin(E*2*pi*t50) 0 sin(B*2*pi*t25) ...
0 sin(A*2*pi*t75) 0 sin(FS*2*pi*t75) ...% next line
0 sin(E*2*pi*t25) 0 sin(G*2*pi*t25) ...
0 sin(FS*2*pi*t25) 0 sin(DS*2*pi*t25) ...
0 sin(FN*2*pi*t25) 0 sin(B*2*pi*t25) ...
0 sin(B*2*pi*t50) ... % next line
0 sin(E*2*pi*t25) 0 sin(G*2*pi*t25) ...
0 sin(FS*2*pi*t25) 0 sin(E*2*pi*t50) ...
0 sin(D*2*pi*t25) 0 sin(DF*2*pi*t50) ...
0 sin(C*2*pi*t25) 0 sin(AF*2*pi*t25) ...
]; % the signal
sound(y,fs)