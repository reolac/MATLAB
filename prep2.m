close all 
clear all 
clc

fs = 8000; % the sampling frequency
%time
t25 = 0:1/fs:0.25;
t50 = 0:1/fs:0.50;
t75 = 0:1/fs:0.75;
t100 = 0:1/fs:1.00;


% notes
G4 = 2*392.00;
G5 = 2*784.00; 
G6 = 2*1568.00;

CS5 = 2*554.40;
A5 = 2*880.00;
B5 = 2*987.80;
C5 = 2*523.30;
D5 = 2*587.30;
E5 = 2*659.30;
F5 = 2*698.5;
FS5 = 2*740.00;
Eb5 = 2*622.30; 
Bb5 = 2*932.30; 
D6 = 2*1175.00;
Eb6 = 2*1245;



% the signal
y = [sin(G5*2*pi*t50) 0 sin(G5*2*pi*t50) ...
0 sin(G5*2*pi*t50) 0 sin(Eb5*2*pi*t50) ...
0 sin(Bb5*2*pi*t50) 0 sin(G5*2*pi*t50) ...
0 sin(Eb5*2*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(G5*2*pi*t50) ...
...
0 sin(D6*2*pi*t50) 0 sin(D6*2*pi*t50)... 
0 sin(D6*pi*t50) 0 sin(Eb6*2*pi*t50) ...
0 sin(Bb5*2*pi*t50) 0 sin(G5*2*pi*t50) ...
0 sin(Eb5*2*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(G5*2*pi*t50)...
...
0 sin(D6*2*pi*t50) 0 sin(D6*2*pi*t50)... 
0 sin(D6*pi*t50) 0 sin(Eb6*2*pi*t50) ...
0 sin(Bb5*2*pi*t50) 0 sin(G5*2*pi*t50) ...
0 sin(Eb5*2*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(G5*2*pi*t50) 0 sin(G5*2*pi*t50)...
...
0 sin(G4*2*pi*t25) 0 sin(G4*2*pi*25) 0 sin(G6*2*pi*t50)... 
0 sin(FS5*pi*t50) 0 sin(F5*2*pi*t50) ...
0 sin(E5*2*pi*t50) 0 sin(Eb5*2*pi*t50) ...
0 sin(E5*2*pi*t50) 0 sin(A5*2*pi*t50) ...
0 sin(CS5*2*pi*t50) 0 sin(C5*2*pi*t50)...
...
0 sin(B5*2*pi*t50) 0 sin(Bb5*2*pi*t50)... 
0 sin(A5*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(Eb5*2*pi*t50) 0 sin(FS5*2*pi*t50) ...
0 sin(Bb5*2*pi*t50) 0 sin(G5*2*pi*t50) ...
0 sin(Bb5*2*pi*t25) 0 sin(D5*2*pi*t25)...
...
0 sin(G5*2*pi*t50) 0 sin(G5*2*pi*t25)... 
0 sin(G5*pi*t25) 0 sin(G5*2*pi*t50) ...
0 sin(FS5*2*pi*t50) 0 sin(F5*2*pi*t50) ...
0 sin(E5*2*pi*t25) 0 sin(Eb5*2*pi*t25) ...
0 sin(E5*2*pi*t50) 0 sin(A5*2*pi*t50)...
...
0 sin(CS5*2*pi*t50) 0 sin(C5*2*pi*t50)... 
0 sin(B5*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(A5*2*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(Eb5*2*pi*t50) 0 sin(Bb5*2*pi*t50) ...
0 sin(G5*2*pi*t25) 0 sin(Eb5*2*pi*t25)...
0 sin(Bb5*2*pi*t50) 0 sin(G5*2*pi*t50)...
];
sound(y,fs)