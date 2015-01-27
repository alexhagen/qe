---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/3/15
title: Prandtl’s Mixing Length
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
author: Alex Hagen
---


<<<<<<< HEAD
=======
Remember turbulent momentum equation

$$\frac{\partial\rho\overline{v}}{\partial t}+\nabla\cdot\rho\overline{vv}=-\nabla\overline{p}-\nabla\cdot\tau^{T}+\rho\vec{g}$$

We can use two models for the turbulent viscosity, :

Eddy Viscosity
--------------

Using Newton’s viscosity model,

$$\tau_{xy}^{t}=-\mu^{t}\frac{\partial\overline{v_{x}}}{\partial y}$$

but unfortunately, $\mu=\mu\left(\vec{x}\right)$ and non-linear, so
instead we use:

Prandtl’s Mixing Length Model
-----------------------------

Momentum transfer at discrete intervals only after the eddy mass
($\delta m$) has moved an entire length ($l$).

$$\underbrace{\delta m\delta v_{x}}_{\substack{\text{momentum}\\
\text{gain in the x}\\
\text{direction}
}
}\;\;\Longrightarrow\;\;\underbrace{\frac{\delta m}{\delta t}\delta v_{x}}_{\substack{\text{force}}
}\;\;\Longrightarrow\;\;\tau^{t}=\frac{F}{A}=\underbrace{-\frac{1}{A}\frac{\delta m}{\delta t}\delta v_{x}}_{\substack{\text{shear stress}\\
\text{acting against}\\
\delta v_{x}\text{ over area }A
}
}$$

By assuming that $l$ is very small:

$$\delta v_{x}\approx\frac{\delta\overline{v_{x}}}{\delta y}l$$

and applying continuity (or matching units)

$$\frac{1}{A}\frac{\delta m}{\delta t}=\rho\left|v_{y}^{'}\right|$$

And therefore we have

$$\frac{\tau^{t}}{\rho}=-l\left|v_{y}^{'}\right|\frac{d\overline{v_{x}}}{dy}=-\varepsilon_{M}\frac{d\overline{v_{x}}}{dy}$$

Applying Prandtl’s Assumptions:

​(X) [draw, shape=circle, inner sep=0] <span>1</span>;: perpendicular
velocity is proportional to the flow velocity
$$\left|v_{y}^{'}\right|=k_{1}\left|v_{x}^{'}\right|$$

​(X) [draw, shape=circle, inner sep=0] <span>2</span>;: fluctuation in x
direction velocity is propotional to the rate of change of x direction
velocity times the length moved
$$v_{x}^{'}=k_{2}\delta v_{x}=k_{2}l\frac{d\overline{v_{x}}}{dy}$$

and, minorly, $l=ky$

$$\frac{\tau^{t}}{\rho}=-\left(ky\right)\left|k_{1}\left|k_{2}\left(ky\right)\frac{d\overline{v_{x}}}{dy}\right|\right|\frac{d\overline{v_{x}}}{dy}=-k^{2}y^{2}\left(\frac{d\overline{v_{x}}}{dy}\right)^{2}$$

therefore

$$\frac{d\overline{v_{x}}}{dy}=-\frac{1}{ky}\sqrt{\frac{\tau^{t}}{\rho}}$$

and we can assume that all of the turbulent stress comes from the wall
($\tau^{t}=\tau^{w}$)

By non dimensionalizing with

$$v^{*}=\frac{v_{x}}{\sqrt{\nicefrac{\tau^{t}}{\rho}}}\;\;\&\;\;y^{*}=\frac{y\sqrt{\nicefrac{\tau^{t}}{\rho}}}{v}$$

we get

$$\frac{dv^{*}}{dy^{*}}=\frac{1}{ky^{*}}\;\;\therefore\;\;v^{*}=\frac{1}{R}\ln\left(y^{*}\right)+C$$

and we can evaluate how much this is using Fanning’s friction factor

$$\tau^{w}=\frac{1}{2}f_{i}\rho u^{2}\;\;\therefore\;\;\sqrt{\frac{\tau^{w}}{\rho}}=\sqrt{\frac{1}{2}f_{i}}u$$

and

$$y^{*}=Re\frac{\sqrt{\nicefrac{\tau^{w}}{\rho}}}{\nu}\frac{y}{D}\approx Re\frac{1}{40}\frac{y}{R}$$
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
