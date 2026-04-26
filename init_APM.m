close all

% Plant
pa.ATC_RAT_PIT_B = 175;

% PID target filter frequency in Hz
pa.ATC_RAT_PIT_FLTT = 30;
% pa.wc_tar = 2*pi*fc_tar;

% PID derivative filter frequency in Hz
pa.ATC_RAT_PIT_FLTD = 20;
% pa.wc_tor = 2*pi*fc_tor;

% % velocity filter
% fc_vel = 80;
% pa.wc_vel = 2*pi*fc_vel;

% % position controller
% pa.P_p = 40;

% velocity controller
pa.ATC_RAT_PIT_P = 0.15;
pa.ATC_RAT_PIT_I = 0.02;
pa.ATC_RAT_PIT_D = 0.002;
% pa.Dlp_v = 50;

% % position observer
% pa.P_obs = 5.0;
% pa.I_obs = 0.1;

% % target
% pa.p_vef = 1.0;
% pa.vq_ref = 1.0;
% pa.vd_ref = 0.0;
% pa.iq_ref = 0.1;
% pa.v_ref = 1.0;