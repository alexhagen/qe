---
layout: post-no-feature
date: 1/19/15
title: Control Volume Analysis
---


Balance Equations
=================

$$\frac{d}{dt}\int_{CV}\rho dV-\oint_{CS}\rho\vec{v}\cdot\vec{n}dA=\left(\rho\vec{v}A\right)_{in}-\left(\rho\vec{v}A\right)_{out}=\sum_{i}\dot{m_{i}}$$

$$\frac{d}{dt}\int_{CV}\rho\vec{v}dV=\sum\vec{F}+\sum_{i}\dot{m_{i}}\vec{v}$$

$$\frac{d}{dt}\int_{CV}\rho\vec{e}dV=\dot{Q}+W_{s}+\sum_{i}\left(\vec{e_{i}}+\frac{p_{i}}{\rho_{i}}\right)$$

$$\vec{e}\equiv u+\cancelto{0}{\left(\frac{\vec{v}^{2}}{2}+\vec{g}z\right)}$$

and for a plant

$$\dot{Q}_{core}+W_{sp1}-\left(\dot{Q}_{SG}+\dot{Q}_{loss}\right)+\sum_{i}\dot{m}_{i}\left(\vec{e_{i}}+\frac{p_{i}}{\rho_{i}}\right)<0$$

For reference, when the reactor scrams, the power profile can be assumed
to drop to $8\%$ immediately, and stay there for a long time, or:

$$P_{d}\left(t\right)=0.062P_{0}\left[t^{-0.2}-\left(t_{0}+t\right)^{-0.2}\right]\;\;\text{Way and Winger}$$

When the pump trips, the pressure follows a coast down, which can be
solved using the momentum equation, which follows:

LOCA
----

In a LOCA, the pump trips immediately, and (hopefully) the reactor
scrams. Then, at a later time, the ECCS turn on. The energy being lost
in the summation term in the energy equation is high whereas the energy
added in from the ECCS is low quality, so it works.

$$\frac{d}{dt}\int_{CV}\rho dV=-\left(\rho vA\right)_{break}+\underbrace{\left(\rho vA\right)_{eccs}}_{\substack{\text{after some}\\
\text{time }t
}
}\underbrace{>0}_{\substack{\text{ECCS}\\
\text{design}\\
\text{requirement}
}
}$$

$$\frac{d}{dt}\int_{CV}\rho edV=\cancelto{\dot{Q}_{decay}}{\dot{Q}_{core}}+\cancelto{W_{cd}}{W_{sp1}}-\left(\dot{Q}_{SG}+\dot{Q}_{loss}\right)<0$$

LOFA
----

In a LOFA, there is a pump trip and a scram, and since the steam
generator has nothing really exchanging through it, it only can remove
the heat through natural convection.

$$\frac{d}{dt}\int_{CV}\rho edV=\cancelto{\dot{Q}_{decay}}{\dot{Q}_{core}}+\cancelto{W_{cd}}{W_{sp1}}-\left(\cancelto{\dot{Q}_{NC}}{\dot{Q}_{SG}}+\dot{Q}_{loss}\right)<0$$

LOHSA
-----

In a LOHSA, the secondary loop fails, so there is only a small amount of
heat able to be removed by the steam generator.

$$\frac{d}{dt}\int_{CV}\rho edV=\cancelto{\dot{Q}_{decay}}{\dot{Q}_{core}}+W_{sp1}-\left(\cancelto{\text{small}}{\dot{Q}_{SG}}+\dot{Q}_{loss}\right)<0$$

For this accident, the HPIS is required.

SBO
---

For a station blackout, almost all components fail, including the
secondary loop, so all drop to their lower values.

$$\frac{d}{dt}\int_{CV}\rho edV=\cancelto{\dot{Q}_{decay}}{\dot{Q}_{core}}+\cancelto{W_{cd}}{W_{sp1}}-\left(\cancelto{\text{small}}{\dot{Q}_{SG}}+\dot{Q}_{loss}\right)<0$$

For this accident, the HPIS are required, but there is no power to turn
it on.
