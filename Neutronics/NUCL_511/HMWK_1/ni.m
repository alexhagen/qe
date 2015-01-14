function [N_I]=ni(N_I0,t,phi)

    lambda_I=log(2)/(6.57*3600);
    t=t*3600;
    Sigma_f=504.81E-24;
    gamma_I=6.2819E-2;
    sigma_I=0.020E-24;

    F=Sigma_f*phi;
    lambda_bar_I=lambda_I + sigma_I*phi;
    decay_I=N_I0*exp(-lambda_bar_I*t);
    conv_I=gamma_I*F*(1-exp(-lambda_bar_I*t))/lambda_bar_I;
    N_I = decay_I + conv_I;
end