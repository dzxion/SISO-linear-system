close all
ST0 = slTuner('linear_control_schemes_22b');

opt = bodeoptions;
opt.FreqUnits = 'Hz';

% position tracking
T_tp2pos = getIOTransfer(ST0,'pos ref','position');
% velocity tracking
T_tv2vel = getIOTransfer(ST0,'vel ref','velocity','pos err');
% torque disturbance attenuation
T_dis2ev = getIOTransfer(ST0,'disturbance','vel err','pos err');
% position noise attenuation
T_np2ep = getIOTransfer(ST0,'noise pos','pos err');
% velocity noise attenuation
T_nv2ev = getIOTransfer(ST0,'noise vel','vel err','pos err');

figure
subplot(1, 2, 1);
step(T_tp2pos);
subplot(1, 2, 2);
bode(T_tp2pos,opt);
figure
subplot(1, 2, 1);
step(T_tv2vel);
subplot(1, 2, 2);
bode(T_tv2vel,opt);
figure
subplot(1, 3, 1);
bode(T_dis2ev,opt);
subplot(1, 3, 2);
bode(T_np2ep,opt);
subplot(1, 3, 3);
bode(T_nv2ev,opt);


