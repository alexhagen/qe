clc; close all; clear;
T=linspace(0,50,1000);
Y=T.^2+50;
Y2=(T-50).^2+50;
plot(T,Y,'k-',T,Y2,'k-',[34 34],[0 300],'k--');
xlabel('Gamma Energy');ylabel('Probability');
set(gca,'xtick',[34],'xticklabel',{'1.02 MeV'},'ytick',[],'yticklabel',[]);
axis([0 50 0 300]);
set(gcf,'Position',[50 50 1000 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Photon_Interactions_Plot.svg');