---
layout: post-no-feature
date: 
title: Example Interactions Exam 2013
---


=10000

What is the wavelength of

an electron whose kinetic energy is ~~$1000\,eV$~~? ($1\,MeV$ - changed
by A.Hagen, January 2014)

~~a $10^{-8}\,kg$ oil droplet falling at the rate of
$0.01\,\frac{m}{s}$?~~

a $1\,MeV$ neutron?

We must convert first the energy to (relativistic) momentum, which for
mass bearing particles is related to $\lambda$ by $\lambda=\frac{h}{p}$
and for non-mass bearing particles $\lambda=h\nu$ @Lamarsh2001 [p. 14].

The electron in this case is relativistic. The rest mass of a neutron is
$0.511\,MeV$. We use the equation @Lamarsh2001 [p. 15]
$$\lambda=\frac{hc}{\sqrt{E_{total}^{2}-E_{rest}^{2}}}=\frac{1240\,eV\cdot nm}{\sqrt{\left(1\,MeV+0.511\,MeV\right)-\left(0.511\,MeV\right)^{2}}}=8.72\times10^{-13}\,nm$$

We do not solve this part since it won’t be asked on the exam.

The neutron in this case is not relativistic
($1\,MeV<0.2\cdot m_{rest}=20\,MeV$), nevertheless we use the same
equation

$$\lambda=\frac{hc}{\sqrt{E_{total}^{2}-E_{rest}^{2}}}=\frac{1240\,eV\cdot nm}{\sqrt{\left(1\,MeV+938\,MeV\right)-\left(938\,MeV\right)^{2}}}=2.86\times10^{-14}\,nm$$

A $5\,MeV$ electron interacts with a positron at rest. What interaction
will occur? What will the resulting types and energies of the two
resulting particles be?

First we must determine what kind of interaction will happen, which in
this case is **annihilation**. This will interact as the diagram given
below:

First, we can start an energy balance.

$$E_{e^{-}}+E_{e^{+}}=E_{\gamma1}+E_{\gamma2}$$

$$\left(5\,MeV+0.511\,MeV\right)+0.511\,MeV=E_{\gamma1}+E_{\gamma2}\;\therefore\;E_{\gamma1}+E_{\gamma2}=6.022\,MeV$$

We know that the two $\gamma$’s will head off in opposite directions, so
we can do a momentum balance.

$$p_{e^{-}}+p_{e^{+}}=p_{\gamma1}-p_{\gamma2}$$

Using the definition for momentum of $\gamma$’s:

$$p_{e^{-}}+p_{e^{+}}=\frac{E_{\gamma1}}{c}-\frac{E_{\gamma2}}{c}$$

and using the definition for relativistic particle momentum, and that
the stationary positron has no momentum

$$p_{e^{-}}\cdot c=E_{\gamma1}-E_{\gamma2}$$

$$\left(\frac{1}{c}\sqrt{E_{total}^{2}-E_{rest}^{2}}\right)\cdot c=E_{\gamma1}-E_{\gamma2}$$

$$\sqrt{\left(5\,MeV\right)^{2}-\left(0.511\,MeV\right)^{2}}=E_{\gamma1}-E_{\gamma2}\;\therefore\;E_{\gamma1}-E_{\gamma2}=5.49\,MeV$$

with two above definitions

$$E_{\gamma1}=$$

$$E_{\gamma2}=$$

$37\,MBq$ ($1\,mCi$) are “milked” from a “cow.” What will be the
activity of the daughter, , $1\,yr$ after the milking [@Cember2012a]?

Half Lives from [@KoreaAtomicEnergyResearchInstitute2000]

$$T_{\frac{1}{2}^{99m}Tc}=6.01\,hr,\;T_{\frac{1}{2},^{99}Mo}=65.94\,hr,\;T_{\frac{1}{2}^{99}Tc}=2.11\times10^{5}\,yr$$

First we must assume that the is removed from the at $t=0$, so all we
have is decaying to . In this case, we can write two differential
equations. The first has to do with the amount of atoms over time

$$\frac{dN_{1}}{dt}=-\lambda_{1}N_{1}$$

which can easily be solved to show

$$N_{1}(t)=N_{1}(0)\cdot\exp\left(-\lambda_{1}t\right)$$

Now we have a second differential equation for the amount of atoms over
time

$$\frac{dN_{2}}{dt}=-\lambda_{2}N_{2}+\lambda_{1}N_{1}$$

by solving this and subsituting in the solution to the first
differential equation, we get {lamarsh 26}

$$N_{2}=N_{2}(0)\exp\left(-\lambda_{2}t\right)+\frac{N_{1}(0)\lambda_{2}}{\lambda_{2}-\lambda_{1}}\left(\exp\left(-\lambda_{1}t\right)-\exp\left(-\lambda_{2}t\right)\right)$$

We cannot find an appropriate exercise similar to this problem.

A beam of $1\,MeV$ electrons strikes a thick target. For a beam current
of $100\,\mu A$, find the power dissipated in the target [@Knoll2000].

The intensity can be found by

$$I=100\times10^{-6}\,\frac{C}{s}\cdot\frac{1\,e^{-}}{1.6\times10^{-19}\,C}=6.25\times10^{14}\,\frac{e^{-}}{s}$$

and, assuming that the entirity of the $1\,MeV$ is dissipated in the
target on each collision, the power dissipated is

$$P=\frac{1\,MeV}{e^{-}}\cdot\frac{6.25\times10^{14}\,e^{-}}{s}=6.25\times10^{14}\,\frac{MeV}{s}=100.1\,W$$
