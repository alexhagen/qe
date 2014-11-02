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
for j=1:5
    t1=0.1;  a=5*beta;
    switch j
        case 1
            ap=a;
        case 2
            ap=0.75*a;
        case 3
            ap=0.50*a;
        case 4
            ap=0.25*a;
        case 5
            ap=0.00*a;
    end
    rho = @(t) (t<=t1).*a.*t + (t>t1).*((a.*t1)-(ap.*(t-t1)));

    %% Initial Conditions
    pn1=1; pn=1;
    zeta1n1=1;
    zeta2n1=1;
    zeta3n1=1;
    zeta4n1=1;
    zeta5n1=1;
    zeta6n1=1;

    %% Numerical Method Conditions
    h=0.001;
    t=0:h:0.3;
    p=[];
    pdot=[];

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
        b=[zeta1n1/h zeta2n1/h zeta3n1/h zeta4n1/h zeta5n1/h zeta6n1/h Lambda*pn1/h]';
        x=A\b;
        zeta1n1=x(1);
        zeta2n1=x(2); 
        zeta3n1=x(3);
        zeta4n1=x(4);
        zeta5n1=x(5);
        zeta6n1=x(6);
        pn=x(7);
        pdotn=((rho(i)-beta)*pn)/Lambda + (1/Lambda)*((lambda1*zeta1n1)+...
            (lambda2*zeta2n1)+(lambda3*zeta3n1)+(lambda4*zeta4n1)+...
            (lambda5*zeta5n1)+(lambda6*zeta6n1));
        pdot=[pdot pdotn];
        p=[p pn];
    end
    %% Find zero crossing of the derivative
    sign=pdotn(1)/abs(pdotn(1));
    for i=2:numel(pdot)
        if sign~=pdot(i)/abs(pdot(i)) && t(i)>0.1
            t(i)
            rho(i)
            break;
        else
            sign=pdot(i)/abs(pdot(i));
        end
    end
    
    figure(j)
    set(gcf,'Units','centimeters');
    figwidth=13;
    figheight=3.25;
    set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
    [ax,h1,h2]=plotyy(t,p,t,pdot);
    set(h1,'Color','k');
    set(h2,'Color','k','Linestyle','--');
    xlabel('Time ($t$) [$s$]','interpreter','none');
    ylabel(ax(1),'Power Amplitude ($p$) [ ]','interpreter','none','Color','k');
    ylabel(ax(2),'Derivative of Power ($\dot{p}$) [ ]',...
        'interpreter','none','Color','k');
    set(ax(2),'YLim',[-10000 10000]);
    set(ax(1),'XLim',[0 0.3],'YColor','k');
    set(ax(2),'XLim',[0 0.3],'YColor','k');
    
    plot2svg(['img/nucl511hmwk8prob2plot' num2str(j) '.svg']);
end