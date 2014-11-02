function NUCL_511_HMWK_2_PROB_2()
clear; close all; clc;
set(gcf,'Units','centimeters');
u=[0:0.5:13];
u=[u;u(2:end) u(end)];
u=u(:);
E=[22.6 37.3 61.4 101 167 275 454 749 0.123E4 0.203E4 0.335E4 0.553E4 ...
    0.912E4 0.150E5 0.248E5 0.409E5 0.674E5 0.111E6 0.183E6 0.302E6 ...
    0.498E6 0.821E6 1.353E6 2.231E6 3.679E6 6.065E6 10E6];
E=E(end:-1:1);
chi1=[0 0 0 0 0 0.009 0.021 0.093 0.088 0.156 0.174 0.171 0.131 0.121 ...
    0.020 0.010 0.005 0.001 0 0 0 0 0 0 0 0 0];
chi2=[0 0 0 0 0 0.022 0.066 0.295 0.110 0.098 0.108 0.107 0.088 0.079 ...
    0.013 0.009 0.004 0.001 0 0 0 0 0 0 0 0 0];
chi3=[0 0 0 0 0 0.012 0.070 0.191 0.094 0.097 0.156 0.142 0.118 0.080 ...
    0.015 0.012 0.005 0 0 0 0 0 0 0 0 0 0];
chi456=[0 0 0 0 0.009 0.025 0.062 0.184 0.128 0.157 0.109 0.109 0.099 ...
    0.089 0.015 0.010 0.004 0 0 0 0 0 0 0 0 0 0];
chi=[0 0.0325 0.1217 0.2109 0.2230 0.1728 0.1105 0.0628 0.0316 0.0168 ...
    0.0083 0.0040 0.0019 0.0009 0.0004 0.0002 0.0001 0 0 0 0 0 0 0 0 0 0];

a1=areaunder(E,chi1)
a2=areaunder(E,chi2)
a3=areaunder(E,chi3)
a456=areaunder(E,chi456)
a=areaunder(E,chi)

E=[E;E(2:end) E(end)];
E=E(:);
chi1=[chi1; chi1];
chi1=chi1(:);
chi2=[chi2;chi2];
chi2=chi2(:);
chi3=[chi3;chi3];
chi3=chi3(:);
chi456=[chi456;chi456];
chi456=chi456(:);
chi=[chi;chi];
chi=chi(:);
chiabove=chi(E>1E6);


semilogx([1E6 1E6],[0 0.35],'k--');
hold on;
chiabove=chi(E>1E6);
h=patch([1E6 max(E) E(E>1E6)' 1E6 1E6],[0 0 chi(E>1E6)' chiabove(end) 0],[167/255 169/255 172/255]);
set(h,'EdgeColor','none');
semilogx([1E6 1E6],[0 0.35],'k--');
k=semilogx(E,chi,E,chi1,E,chi2,E,chi3,E,chi456);

figwidth=18;figheight=8;
xlabel('Neutron Emission Spectra ($\ln\left(E\right)$) [$MeV$]','interpreter','none');
ylabel('Fraction Emitted ($\chi$) [ ]','interpreter','none');
axis([1E1 1E7 0 0.35]);
j=legend([k;h],'Total','Group 1','Group 2','Group 3','Group 4-6',...
    'Fast Fission Fraction');
set(j,'Location','NorthWest');

set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('chivse.svg');
end

function [a]=areaunder(E,chi)
    delE=[E;E(2:end) 0];
    delE=delE(1,:)-delE(2,:);
    delEabove=delE.*([E(2:end) 0]>1E6);
    a=(sum(chi.*delEabove)+0.6635*chi(5))/sum(chi.*delE);
end