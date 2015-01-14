clear; close all; clc;
f=fopen('input.out','r');
t=zeros(1,26);
k=t;
u235=t;
u238=t;
pu239=t;
i=0;
while ~feof(f)
    line=fgetl(f);
    if numel(line)>7
        if strcmp(line(1:8),' U-234 =')
            i=i+1;
            x=sscanf(line,' U-234 = %E  U-235 = %E  U-236 = %E  U-237 = %E  U-238 = %E  U-239 = %E');
            u235(i)=x(2); u238(i)=x(5);
            line=fgetl(f);
            line=fgetl(f);
            pu239(i)=sscanf(line,' Pu-239= %E %s',1);
            tk=0;
            while tk==0 && ~feof(f)
                line = fgetl(f);
                if numel(line)>89
                    if strcmp(line,'          --------------------  C A S M O - 4     S U M M A R Y   ----------------------  ');
                        line=fgetl(f);
                        out=sscanf(line,'          BURNUP = %f MWD/KG   K-INF = %f   M2 = %f   B2 = %f',2);
                        t(i)=out(1);
                        k(i)=out(2);
                        tk=1;
                    end
                end
            end
        end
    end
end
fclose(f);
figwidth=18; figheight=5;
figure(1);
set(gcf,'Units','centimeters');
h=plot(t,k,'k-',[0 max(t)],[1 1],'k--');
set(h(1),'LineWidth',2);
xlabel('Time ($t$) [$MWd/kg$]','interpreter','none');
ylabel('k-infinity ($k_{\infty}$) [ ]','interpreter','none');
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('tvsk.svg');
figure(2);
set(gcf,'Units','centimeters');
h=plot(t,u235,'k-');
set(h,'LineWidth',2);
xlabel('Time ($t$) [$MWd/kg$]','interpreter','none');
ylabel('Uranium 235 Density ($N_{^{235}U}$) [$\frac{atoms}{cc}$]','interpreter','none');
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('tvsu235.svg');
figure(3);
set(gcf,'Units','centimeters');
h=plot(t,u238,'k-');
set(h,'LineWidth',2);
xlabel('Time ($t$) [$MWd/kg$]','interpreter','none');
ylabel('Uranium 238 Density ($N_{^{238}U}$) [$\frac{atoms}{cc}$]','interpreter','none');
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('tvsu238.svg');
figure(4);
set(gcf,'Units','centimeters');
h=plot(t,pu239,'k:');
set(h,'LineWidth',2);
xlabel('Time ($t$) [$MWd/kg$]','interpreter','none');
ylabel('Plutonium 239 Density ($N_{^{239}Pu}$) [$\frac{atoms}{cc}$]','interpreter','none');
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('tvspu239.svg');