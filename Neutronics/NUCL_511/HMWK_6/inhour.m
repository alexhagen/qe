function [alpha]=inhour(rho,Lambda,betak,lambdak)
    % make a contianer for the solution
    alpha=zeros(1,6);
    % Set the lower and upper bounds for each asymptotic region
    boundlow=[-500 -2.853 -0.8495 -0.3028 -0.0327 0.0133];
    boundhigh=[-2.854 -0.8496 -0.3029 -0.0328 0.0132 500];
    % for each asymptotic solution
    for i=1:6
        low=boundlow(i);
        high=boundhigh(i);
        vallow=reactivityeqn(low,Lambda,betak,lambdak)-rho;
        valhigh=reactivityeqn(high,Lambda,betak,lambdak)-rho;
        oldalpha=low;
        epsilon=1;
        % until error between iterations is less than 1E-6
        while epsilon > 1E-6
            % find the middle coordinate and its value
            mid=(low+high)/2;
            valmid=reactivityeqn(mid,Lambda,betak,lambdak)-rho;
            % case that we've accidentally landed on a root, make root
            % equal to that value
            if (abs(vallow)<1E-6)
                alpha(i)=low; break;
            end
            if (abs(valhigh)<1E-6)
                alpha(i)=high; break;
            end
            if (abs(valmid)<1E-6)
                alpha(i)=mid; break;
            end
            % case that the root crosses in between low and mid, switch
            % high down to mid
            if (vallow/abs(vallow) ~= valmid/abs(valmid))
                high=mid;  valhigh=valmid;
            % case that the root crosses in between high and mid, switch
            % low up to mid
            elseif (valhigh/abs(valhigh) ~= valmid/abs(valmid))
                low=mid; vallow=valmid;
            % case that the root doesn't cross the interval, make the
            % current alpha equal to NaN
            elseif ((valhigh/abs(valhigh) == valmid/abs(valmid)) && ...
                    (valhigh/abs(valhigh) == vallow/abs(vallow)))
                alpha(i)=NaN; break;
            end
            % determine convergence
            alpha(i)=mid;
            epsilon=abs(alpha(i)-oldalpha);
            oldalpha=alpha(i);
        end
    end   
end
% anonymous function to determine the roots
function [rho]=reactivityeqn(alpha,Lambda,betak,lambdak)
    rho = alpha * Lambda + sum(betak*alpha./(alpha+lambdak));
end