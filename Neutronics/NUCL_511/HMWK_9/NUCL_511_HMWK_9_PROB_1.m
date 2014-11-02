beta1=0.00025; lambda1=0.0129; gamma1=0.00058;
beta2=0.00150; lambda2=0.0311; gamma2=0.00302;
beta3=0.00144; lambda3=0.1340; gamma3=0.00288;
beta4=0.00258; lambda4=0.3310; gamma4=0.00646;
beta5=0.00074; lambda5=1.2600; gamma5=0.00265;
beta6=0.00029; lambda6=3.2100; gamma6=0.01670;

gammaoverbeta=(gamma1+gamma2+gamma3+gamma4+gamma5+gamma6)/...
    (beta1+beta2+beta3+beta4+beta5+beta6)

lambdabar=(lambda1*beta1+lambda2*beta2+lambda3*beta3+lambda4*beta4+...
    lambda5*beta5+lambda6*beta6)/(beta1+beta2+beta3+beta4+beta5+beta6)