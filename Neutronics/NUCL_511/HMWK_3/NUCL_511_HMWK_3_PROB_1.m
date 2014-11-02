function NUCL_511_HMWK_3_PROB_1()
    clear; close all; clc;
    set(gcf,'Units','centimeters');
    kT1=1.4E6;
    kT3=0.0253;
    E1=820.3E3;
    E0=20E6;
    E2=0.1;
    E3=0;
    pi=3.14159;
    
    syms E;
    phi1=2*sqrt(E)*exp(-E/kT1)/(sqrt(pi)*((kT1)^1.5));
    intphi1=vpa(int(phi1,E1,E0))
    phi1E1=vpa(subs(phi1,E1))
    phi2=1/E;
    intphi2=vpa(int(phi2,E2,E1))
    phi2E1=vpa(subs(phi2,E1))
    phi2E2=vpa(subs(phi2,E2))
    phi3=E*exp(-E/kT3)/((kT3)^2);
    intphi3=vpa(int(phi3,E3,E2))
    phi3E2=vpa(subs(phi3,E2))
    
    A=[intphi1 intphi2 intphi3; 0 phi2E2 -phi3E2; phi1E1 -phi2E1 0];
    b=[1;0;0];
    coeffs=A\b;
    A1=coeffs(1)
    A2=coeffs(2)
    A3=coeffs(3)
    
    phi1avg=int(E*phi1,E1,E0)/int(phi1,E1,E0);
    phi2avg=int(E*phi2,E2,E1)/int(phi2,E2,E1);
    phi3avg=int(E*phi3,E3,E2)/int(phi3,E3,E2);
    vconv=sqrt(2*(3E8)^2/939.5E6);
    v1avg=vpa(int(vconv*sqrt(E)*phi1,E1,E0)/int(phi1,E1,E0))
    v2avg=vpa(int(vconv*sqrt(E)*phi2,E2,E1)/int(phi2,E2,E1))
    v3avg=vpa(int(vconv*sqrt(E)*phi3,E3,E2)/int(phi3,E3,E2))
    deltav1=vel(E0)-vel(E1);
    deltav2=vel(E1)-vel(E2);
    deltav3=vel(E2)-vel(E3);
    vavg=(v1avg*deltav1+v2avg*deltav2+v3avg*deltav2)/...
        (deltav1+deltav2+deltav3)
    oneovervavg=((1/v1avg)*deltav1+(1/v2avg)*deltav2+(1/v3avg)*deltav2)/...
        (deltav1+deltav2+deltav3)
    nusigmafavg=((0.017)*deltav1+(0.015)*deltav2+(0.3)*deltav2)/...
        (deltav1+deltav2+deltav3)
    
    phi1num=linspace(E1,E0,1000).*subs(A1*phi1,linspace(E1,E0,1000));
    phi2num=linspace(E2,E1,1000).*subs(A2*phi2,linspace(E2,E1,1000));
    phi3num=linspace(E3,E2,1000).*subs(A3*phi3,linspace(E3,E2,1000));
    semilogx(linspace(E1,E0,1000),phi1num,'k-',linspace(E2,E1,1000),phi2num,'k-',...
        linspace(E3,E2,1000),phi3num,'k-');
    hold on;
    
    y=get(gca,'YLim');
    semilogx([phi1avg phi1avg],y,'k--',[phi2avg phi2avg],y,'k--',[phi3avg phi3avg],y,'k--');
    xlabel('Neutron Energy ($E$) [$eV$]','interpreter','none');
    ylabel('Energy Times Flux ($E\cdot\varphi\left(E\right)$) [$\frac{eV\cdot n}{cm^{2}\cdot s}$]','interpreter','none');
    set(gca,'XTickLabel',{'$10^{-4}$','$10^{-2}$','$10^{0}$','$10^{2}$',...
        '$10^{4}$','$10^{6}$','$10^{8}$'});
    
    figwidth=18;
    figheight=8;
    set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
    plot2svg('NUCL_511_HWMK_3_PROB_1.svg');
    
end

function [v]=vel(E)
    v=sqrt(2*(3E8)*E/939.5E6);
end