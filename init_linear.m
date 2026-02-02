close all

% % target filter
% fc_tar = 8;
% pa.wc_tar = 2*pi*fc_tar;
% 
% % torque filter
% fc_tor = 80;
% pa.wc_tor = 2*pi*fc_tor;
% 
% velocity filter
fc = 1;
pa.wc = 2*pi*fc;
% 
% % position controller
% pa.P_p = 40;

% velocity controller
pa.kp = 1.0;
pa.ki = 1.0;
% pa.D_v = 0.0;
% pa.Dlp_v = 50;

% position observer
% pa.P_obs = 5.0;
% pa.I_obs = 0.1;

% % target
% pa.p_vef = 1.0;
% pa.vq_ref = 1.0;
% pa.vd_ref = 0.0;
% pa.iq_ref = 0.1;
% pa.v_ref = 1.0;