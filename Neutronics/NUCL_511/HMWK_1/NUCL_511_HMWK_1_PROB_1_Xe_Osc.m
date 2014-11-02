clc; clear; close all;

%% Input Yields and XS
lambda_I=log(2)/(6.57*3600);
lambda_Xe=log(2)/(9.14*3600);
Sigma_f=504.81E-24;
gamma_I=6.2819E-2;
gamma_Xe=2.5663E-3;
sigma_I=0.020E-24;
sigma_Xe=2647580E-24;

%% Make the overall containers
t_ovr=zeros(1,4000);
N_I_ovr=zeros(1,4000);
N_Xe_ovr=zeros(1,4000);

%% Time period from -20 to 0 - equilibrium concentrations
t=linspace(-20,0,1000);
phi=1E15;
t_eff=t+20;
F=Sigma_f*phi;
N_I=gamma_I*F/lambda_I;
N_Xe=(gamma_Xe+gamma_I)*F/(gamma_Xe+sigma_Xe*phi);
t_ovr(1:1000)=t;
N_I_ovr(1:1000)=N_I;
N_Xe_ovr(1:1000)=N_Xe;

%% Time period from 0 to 60 - decay of I into Xe at half flux
N_I0=N_I_ovr(1000);
N_Xe0=N_Xe_ovr(1000);
t=linspace(0,60,1000);
phi=0.5E15;
t_eff=t;
N_I = ni(N_I0,t_eff,phi);
N_Xe = nxe(N_Xe0,N_I0,t_eff,phi);
t_ovr(1001:2000)=t;
N_I_ovr(1001:2000)=N_I;
N_Xe_ovr(1001:2000)=N_Xe;

%% Time period from 60 to 120 - recreation of I and Xe with full flux
N_I0=N_I_ovr(2000);
N_Xe0=N_Xe_ovr(2000);
t=linspace(60,120,1000);
phi=1E15;
t_eff=t-60;
N_I = ni(N_I0,t_eff,phi);
N_Xe = nxe(N_Xe0,N_I0,t_eff,phi);
t_ovr(2001:3000)=t;
N_I_ovr(2001:3000)=N_I;
N_Xe_ovr(2001:3000)=N_Xe;

%% Time period from 120 to 180 - decay of I and max of Xe with no flux
N_I0=N_I_ovr(3000);
N_Xe0=N_Xe_ovr(3000);
t=linspace(120,180,1000);
phi=0;
t_eff=t-120;
N_I = ni(N_I0,t_eff,phi);
N_Xe = nxe(N_Xe0,N_I0,t_eff,phi);
t_ovr(3001:4000)=t;
N_I_ovr(3001:4000)=N_I;
N_Xe_ovr(3001:4000)=N_Xe;
figure(1); h=plot(t_ovr,N_I_ovr/max(N_I_ovr),'k-',...
    t_ovr,N_Xe_ovr/max(N_Xe_ovr),'k--');
axis([-20 180 0.0 1.2]);
set(h,'LineWidth',2);
h=xlabel('Time ($t$) [$hr$]','interpreter','none');
set(h,'FontSize',14,'FontName','Serif');
ylabel('Normalized Concentration ($N_{I},\;N_{Xe}$) [ ]','interpreter','none');
set(gcf,'PaperPositionMode','auto','Position',[50 50 800 400]);
h=legend('$N_{I}$','$N_{Xe}$');
set(h,'interpreter','none');
plot2svg('img/xe_i_concentrations.svg');

