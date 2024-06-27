clc;  close all;  clear

T = readtable('position_time.txt');
P = readtable('phase.txt'); 
time_sampl = 0.025;

Player1 = T.Var5;

Time = (length(Player1)-1) * time_sampl;

X = timeseries(Player1, 0:time_sampl:(length(Player1)-1) * time_sampl);

phase_hilbert = timeseries((angle(hilbert(Player1))),0:time_sampl:(length(wrapTo2Pi(angle(hilbert(Player1))))-1) * time_sampl);
