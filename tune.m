close all
ST0 = slTuner('linear_control_schemes_22b',{'P','I','D'});

% %% Tuning Setup
% I_v = realp('I_v', 3);
% I_v.Minimum = 0;
% tf_I = tf(2*pi*I_v,[1 0]); % parametric transfer function
% setBlockParam(ST0,'I',tf_I)   
% 
% D_v = realp('D_v', 0.0006); 
% D_v.Minimum = 0;
% tf_D = tf([pa.Dlp_v*D_v 0],[1 2*pi*pa.Dlp_v]); % parametric transfer function
% setBlockParam(ST0,'D',tf_D)
% 
% %% Design Requirements
% Req1 = TuningGoal.StepTracking('vel ref','velocity',0.01,0);
% Req1.Openings = 'pos err';
% % figure
% % viewGoal(Req1)
% 
% %% Autopilot Tuning
% [ST,fSoft] = systune(ST0,[Req1]);
% showTunable(ST)
% viewGoal(Req1,ST)
    
%% Get Transform Function
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

%% Get Transform Function after tuning
% % position tracking
% T_tp2pos = getIOTransfer(ST,'pos ref','position');
% % velocity tracking
% T_tv2vel = getIOTransfer(ST,'vel ref','velocity','pos err');
% % torque disturbance attenuation
% T_dis2ev = getIOTransfer(ST,'disturbance','vel err','pos err');
% % position noise attenuation
% T_np2ep = getIOTransfer(ST,'noise pos','pos err');
% % velocity noise attenuation
% T_nv2ev = getIOTransfer(ST,'noise vel','vel err','pos err');
% 
%% draw bode
opt = bodeoptions;
opt.FreqUnits = 'Hz';

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


