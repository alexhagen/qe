function NUCL_511_HMWK_4_PROB_1()
    clear; close all; clc;
    set(gcf,'Units','centimeters');
    
    pi=3.14159;
    a=100;
    D1=1.44;
    D2=0.366;
    Sigmaa1=0.01;
    Sigmaa2=0.125;
    SigmaaF1=0.01;
    SigmaaF2=0.09;
    nuSigmaf1=0.008;
    nuSigmaf2=0.169;
    Sigmas12=0.017;
    Sigmar1=Sigmaa1;
    Sigmar2=Sigmaa2;
    B=pi/a;
    k=(nuSigmaf1/(D1*B^2+Sigmar1))...
        +(Sigmas12*nuSigmaf2/((D1*B^2+Sigmar1)*(D2*B^2+Sigmar2)));
    lambda=1/k;
    lambdastar=(D1*D2*B^4+D1*Sigmar2*B^2+D2*Sigmar1*B^2+Sigmar1*Sigmar2)...
        /(D2*nuSigmaf1*B^2+Sigmar2*nuSigmaf1+Sigmas12*nuSigmaf2);
    
    
    A=[D1*B^2+Sigmar1-lambda*nuSigmaf1 -lambda*nuSigmaf2;...
        -Sigmas12 D2*B^2+Sigmar2]
    varphi=null(A)
    phi0=pi/(2*a*(nuSigmaf1*varphi(1)+nuSigmaf2*varphi(2)))
    
    Astar=[D1*B^2+Sigmar1-lambdastar*nuSigmaf1 -Sigmas12;...
        -lambdastar*nuSigmaf2 D2*B^2+Sigmar2];
    varphistar=null(Astar)
    phistar0=pi/(2*a*(varphistar(1)+varphistar(2)))
    x=linspace(-a/2,a/2,1000);
    phi1=varphi(1)*phi0*cos(pi*x/a);
    phi2=varphi(2)*phi0*cos(pi*x/a);
    phistar1=varphistar(1)*phistar0*cos(pi*x/a);
    phistar2=varphistar(2)*phistar0*cos(pi*x/a);
    
    [ax,~,~]=plotyy(x,phi1,x,phistar1);
    axes(ax(1));
    hold on;
    plot(x,phi2,'b--');
    axes(ax(2));
    hold on;
    plot(x,phistar2,'g--');
    
    xlabel('X Coordinate ($x$) [$cm$]','interpreter','none');
    set(get(ax(1),'Ylabel'),'string','Flux ($\varphi$) [ ]',...
        'interpreter','none') 
    set(get(ax(2),'Ylabel'),'string','Adjoint Flux ($\varphi^{*}$) [ ]',...
        'interpreter','none')
    set(ax(1),'YLim',[0 0.6], 'YTick',[0,0.2,0.4,0.6]);
    set(ax(2),'YLim',[0 0.011],'YTick',[0,0.0025,0.005,0.0075,0.01]);
    
    figwidth=12;
    figheight=8;
    set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
    plot2svg('NUCL_511_HMWK_4_PROB_1.svg');
end