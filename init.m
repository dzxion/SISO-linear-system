close all

% target filter
pa.wc_target = 1;

% torque filter
pa.wc_torque = 1;

% position controller
pa.Kp_p = 1;

% velocity controller
pa.Ki_v = 0.1;
pa.Kp_v = 1;

% position observer
pa.Kp_observer = 1;
pa.Ki_observer = 0.1;

% % target
% pa.p_vef = 1.0;
% pa.vq_ref = 1.0;
% pa.vd_ref = 0.0;
% pa.iq_ref = 0.1;
% pa.v_ref = 1.0;