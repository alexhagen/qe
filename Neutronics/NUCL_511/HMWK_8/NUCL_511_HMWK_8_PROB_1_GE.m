close all; clear; clc;

%% Reactor Parameters
Lambda=3E-6;
beta1=0.00025; lambda1=0.0129;
beta2=0.00150; lambda2=0.0311;
beta3=0.00144; lambda3=0.1340;
beta4=0.00258; lambda4=0.3310;
beta5=0.00074; lambda5=1.2600;
beta6=0.00029; lambda6=3.2100;
beta=beta1+beta2+beta3+beta4+beta5+beta6;
rho = @(t) 0;
s = @(t) (t<500)*0.5 + (t>=500)*2;

%% Initial Conditions
pn1=1; pn=1;
zeta1n1=1;
zeta2n1=1;
zeta3n1=1;
zeta4n1=1;
zeta5n1=1;
zeta6n1=1;

%% Numerical Method Conditions
h=0.1;
t=0:h:900;
p=[];

%% Perform implicit euler method using arrowhead form for each time 
% step and put into a matrix along with derivative
for i=t
    pn1=pn;
    A=[(1/h)+lambda1 0 0 0 0 0 -beta1;...
    0 (1/h)+lambda2 0 0 0 0 -beta2;...
    0 0 (1/h)+lambda3 0 0 0 -beta3;...
    0 0 0 (1/h)+lambda4 0 0 -beta4;...
    0 0 0 0 (1/h)+lambda5 0 -beta5;...
    0 0 0 0 0 (1/h)+lambda6 -beta6;...
    -lambda1 -lambda2 -lambda3 -lambda4 -lambda5 -lambda6 (Lambda/h)+(beta-rho(i));];
    b=[zeta1n1/h zeta2n1/h zeta3n1/h zeta4n1/h zeta5n1/h zeta6n1/h s(i)+Lambda*pn1/h]';
    x=A\b;
    zeta1n1=x(1);
    zeta2n1=x(2); 
    zeta3n1=x(3);
    zeta4n1=x(4);
    zeta5n1=x(5);
    zeta6n1=x(6);
    pn=x(7);
    p=[p pn];
end

set(gcf,'Units','centimeters');
figwidth=18;
figheight=10;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot(t,p,'k-');
xlabel('Time ($t$) [$s$]','interpreter','none');
ylabel('Power Amplitude ($p$) [ ]','interpreter','none');  
plot2svg(['img/nucl511hmwk8prob1plot.svg']);