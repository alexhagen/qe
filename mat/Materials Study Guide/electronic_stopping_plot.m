E=linspace(0,100,1000);
x=[0,15,25,50,75,100,130];
Y=[5,6,6,20,5,5,5];
dEdx=spline(x,Y,E);
plot(E,dEdx,'k-',[25 25],[0 25],'k--',[50 50],[0 25],'k--',[75 75],[0 25],'k--');
xlabel('log|E|');ylabel('log|dE/dx|');
set(gcf,'Position',[50 50 1000 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Electronic_Stopping_Plot.svg');