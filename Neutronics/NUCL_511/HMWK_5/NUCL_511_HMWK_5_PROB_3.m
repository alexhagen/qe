clear; close all; clc;
set(gcf,'Units','centimeters');

z=linspace(0,40,1000);
syms zsym;
psym=5*int(cos(0.1)/cos(zsym/100),zsym);
p=subs(psym,zsym,z);
plot(z,p,'k-');

ylabel('Power Level ($p_{0}$) [$W$]','interpreter','none');
xlabel('Coordinate of Source ($z$) [$cm$]','interpreter','none');
 figwidth=18;
    figheight=8;
    set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
    plot2svg('NUCL_511_HWMK_5_PROB_3.svg');