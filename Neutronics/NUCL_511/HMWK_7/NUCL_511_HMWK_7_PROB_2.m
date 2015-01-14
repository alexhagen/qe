clear; close all; clc;


beta=0.007;
lambdabar=0.1;

set(gcf,'Units','centimeters');
rho1=0;
t=linspace(0,0.05,1000);
legendloc='SouthEast';
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

    p=1-exp(-(lambdabar*Lambda+beta)*t/Lambda);
    h5=plot(t,p,linespec);
    hold on;

    xlabel('Time ($t$) [$s$]','interpreter','none');
    ylabel('Flux Amplitude ($p$) [ ]','interpreter','none');
end
l=legend('$\Lambda=1\times 10^{-4}$','$\Lambda=1\times 10^{-5}$','$\Lambda=1\times 10^{-6}$')
set(l,'Location',legendloc,'interpreter','none');
figwidth=18;
figheight=8;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg(['img/NUCL_511_HWMK_7_PROB_2.svg']);
