clear; close all; clc;


beta=0.007;
lambdabar=0.1;

for k=1:3
    figure(k);
    set(gcf,'Units','centimeters');
    switch k
        case 1
            rho1=0.75;
            t=linspace(0,0.35,1000);
            plottitle='$rho_{1} = 0.75\$ $';
            legendloc='SouthEast';
        case 2
            rho1=-1;
            t=linspace(0,0.04,1000);
            plottitle='$rho_{1} = -1.0\$ $';
            legendloc='NorthEast';
        case 3
            rho1=-3;
            t=linspace(0,0.02,1000);
            plottitle='$rho_{1} = -3.0\$ $';
            legendloc='NorthEast';
    end
            
    for i=1:3

        switch i
            case 1
                Lambda=10^-4;
                linespec='k-';
            case 2
                Lambda=10^-5;
                linespec='k-.';
            case 3
                Lambda=10^-6;
                linespec='k:';
        end

        p=(1/(1-rho1))*exp((rho1*lambdabar*t)./(1-rho1)) - ...
            (rho1/(1-rho1))*exp((rho1*beta - beta)*t./Lambda);
        h5=plot(t,p,linespec);
        hold on;
        
        xlabel('Time ($t$) [$s$]','interpreter','none');
        ylabel('Flux Amplitude ($p$) [ ]','interpreter','none');

    end
l=legend('$\Lambda=1\times 10^{-4}$','$\Lambda=1\times 10^{-5}$','$\Lambda=1\times 10^{-6}$')
set(l,'Location',legendloc,'interpreter','none');

title(plottitle,'interpreter','none');
figwidth=18;
figheight=8;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg(['img/NUCL_511_HWMK_7_PROB_1_' num2str(k) '.svg']);
end
