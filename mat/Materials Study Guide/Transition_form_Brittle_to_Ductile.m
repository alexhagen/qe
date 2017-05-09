clc; close all; clear;
T=linspace(0,100,1000);
Y=[5*ones(1,200) 1*T(1,201:500)-15.02 36*ones(1,500)];
Y2=[4*ones(1,400) 1*T(1,201:500)-15.02 35*ones(1,300)];
plot(T,Y,'k-',T,Y2,'k--');
xlabel('Temperature');ylabel('Material Toughness');
set(gca,'xtick',[],'xticklabel',[],'ytick',[],'yticklabel',[]);
axis([0 100 0 40]);
set(gcf,'Position',[50 50 450 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Transition_from_Brittle_to_Ductile.svg');