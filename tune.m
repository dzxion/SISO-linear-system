close all
ST0 = slTuner('linear_control_schemes');
T = getIOTransfer(ST0,'pos tar','position')
figure
step(T)