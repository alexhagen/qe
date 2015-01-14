function [N_Xe]=nxe(N_Xe0,N_I0,t,phi)
    
    lambda_I=log(2)/(6.57*3600);
    lambda_Xe=log(2)/(9.14*3600);
    Sigma_f=504.81E-24;
    gamma_I=6.2819E-2;
    gamma_Xe=2.5663E-3;
    sigma_I=0.020E-24;
    sigma_Xe=2647580E-24;
    t=t*3600;
    
    lambda_bar_Xe=lambda_Xe + sigma_Xe*phi;
    lambda_bar_I=lambda_I + sigma_I*phi;
    
    F=Sigma_f*phi;
    
    decay_Xe=N_Xe0*exp(-lambda_bar_Xe*t);
    conv_Xe=gamma_Xe*F*(1-exp(-lambda_bar_Xe*t))/lambda_bar_Xe;
    conv2_Xe=lambda_I*N_I0*(exp(-lambda_bar_I*t)-exp(-lambda_bar_Xe*t))/(lambda_bar_Xe-lambda_bar_I);
    conv3_Xe=(lambda_I*gamma_I*F/lambda_bar_I) * ...
        (((1-exp(-lambda_bar_Xe*t))/lambda_bar_Xe) - ...
        (exp(-lambda_bar_I*t)-exp(-lambda_bar_Xe*t))/(lambda_bar_Xe-lambda_bar_I));
    N_Xe=decay_Xe+conv_Xe+conv2_Xe+conv3_Xe;
end