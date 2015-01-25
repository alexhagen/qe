---
layout: post-no-feature
date: 12/31/14
title: Integral Momentum Equation
---


Setup
-----

There is differing area in the piping throughout the reactor system, so

$$\rho_{i}v_{i}a_{i}=\rho_{i+1}v_{i+1}a_{i+1}=\rho_{r}v_{r}a_{r}$$

and, assuming incompressible, but $p=p\left(t\right)$, we can write this
as

$$v_{i}=\frac{a_{r}}{a_{i}}v_{r}$$

Now we write the integral momentum equation

$$\rho\frac{Dv}{Dt}=-\frac{\partial p}{\partial z}-\frac{f}{2D}\rho v\left|v\right|+\rho g_{z}-\rho\beta\Delta Tg_{z}$$

And integrating over the entire loop

$$\oint\left\{ \underbrace{\rho_{i}\frac{\partial v_{i}}{\partial t}}_{  \tikz[baseline=(X.base)] 
    \node (X) [draw, shape=circle, inner sep=0] {\strut 1};}+\underbrace{\rho_{i}\frac{\partial v_{i}^{2}}{\partial z}}_{  \tikz[baseline=(X.base)] 
    \node (X) [draw, shape=circle, inner sep=0] {\strut 2};}=-\underbrace{\frac{\partial\rho}{\partial z}}_{  \tikz[baseline=(X.base)] 
    \node (X) [draw, shape=circle, inner sep=0] {\strut 3};}-\underbrace{\frac{f}{2D}\rho_{i}v_{i}^{2}}_{  \tikz[baseline=(X.base)] 
    \node (X) [draw, shape=circle, inner sep=0] {\strut 4};}+\underbrace{\rho_{i}g_{zi}-\rho_{i}\beta\Delta T_{i}g_{zi}}_{  \tikz[baseline=(X.base)] 
    \node (X) [draw, shape=circle, inner sep=0] {\strut 5};}\right\} dz$$

Now, to find each term

​(X) [draw, shape=circle, inner sep=0] <span>1</span>;: THis term is not
dependent on $z$ and so by integrating and expanding the velocity, it
becomes, simply:

$$\oint\frac{\partial\rho_{i}v_{i}}{\partial t}dz=\rho_{r}\sum\left\{ \left(\frac{a_{r}}{a_{i}}\right)l_{i}\right\} \frac{\partial v_{r}}{\partial t}$$

​(X) [draw, shape=circle, inner sep=0] <span>2</span>;: This term is
cancelled out because any mass flow rate change must be cancelled
throughout system (or the area at the beginning and end of a loop
integral must be the same):

$$\oint\frac{\partial\rho_{i}v_{i}^{2}}{\partial z}dz=\rho_{r}v_{r}^{2}a_{r}^{2}\left[\frac{1}{a_{i}}\right]_{\text{loop}}=0$$

​(X) [draw, shape=circle, inner sep=0] <span>3</span>;: The pressure in
the system will also be cancelled out, except at a discontinuity, so
this term goes to just the pumping pressure

$$\oint\frac{\partial p}{\partial z}dz=0$$

$$\int\frac{df\left(x\right)}{dx}dx\ne f\left(x\right)\;\text{at a discontinuity}$$

$$\oint\frac{\partial p}{\partial z}dz=\Delta p_{pump}$$

​(X) [draw, shape=circle, inner sep=0] <span>4</span>;: This term
involves invoking the major and minor loss form (as in the bernoulli
Equation):

$$\oint\frac{f_{i}\rho_{i}v_{i}\left|v_{i}\right|}{2D_{i}}dz=\sum_{i}\left\{ \left(\frac{fl}{D}+k\right)_{i}\left(\frac{a_{r}}{a_{i}}\right)^{2}\right\} \frac{\rho_{r}v_{r}^{2}}{2}$$

​(X) [draw, shape=circle, inner sep=0] <span>5</span>;: By invoking the
boussinesq assumption, and knowing that the gravity will equal out
through the loop, we can find only the temperature difference term to
stay in the equation:

$$\oint\rho_{i}g_{zi}+\rho_{i}\beta\Delta T_{i}g_{zi}dz=\oint\cancelto{0}{\rho_{i}g_{zi}}+\rho_{i}\beta\cancelto{\Delta T_{h}}{\Delta T_{i}}g_{zi}dz=\rho_{r}\beta g\underbrace{\Delta T_{h}l_{h}}_{\substack{\text{heated}\\
\text{length and}\\
\text{temperature}\\
\text{change}
}
}$$

so, putting this all together, we get

$$\rho_{r}\frac{\partial v_{r}}{\partial t}\sum\left(\frac{a_{r}}{a_{i}}l_{i}\right)=-\Delta p_{pump}-\frac{\rho_{r}v_{r}^{2}}{2}\sum\left\{ \left(\frac{fl}{D}+k\right)_{i}\left(\frac{a_{r}}{a_{i}}\right)^{2}\right\} +\rho_{r}\beta g\Delta T_{h}l_{h}$$

And we can split this into two different cases of use:

Forced Convection
-----------------

For steady state, this is simple, as

$$\Delta p_{pump}=-\frac{\rho_{r}v_{r}^{2}}{2}\sum\left\{ \left(\frac{fl}{D}+k\right)_{i}\left(\frac{a_{r}}{a_{i}}\right)^{2}\right\}$$

But if the transient happens, then

$$\Delta p_{pump}=\Delta p_{pump}\left(t\right)$$

and should follow the charts:

Natural Convection
------------------

We must first determine the temperature change created, so

$$\rho c_{p}\left\{ \cancelto{0}{\frac{\partial T}{\partial t}}+v_{r}\frac{\partial T}{\partial z}\right\} =\frac{\xi_{h}q_{h}^{''}}{a_{r}}$$

$$\frac{\partial T}{\partial z}=\frac{\xi_{h}q_{h}^{''}}{\rho c_{p}a_{r}v_{r}}$$

$$\Delta T_{h}=\frac{\xi_{h}q_{0}^{''}l_{core}}{\rho c_{p}a_{r}v_{r}}$$

And plugging this in, we get

$$\frac{\rho_{r}v_{r}^{2}}{2}\sum\left\{ \left(\frac{fl}{D}+k\right)_{i}\left(\frac{a_{r}}{a_{i}}\right)^{2}\right\} =\rho_{r}\beta g\left(\frac{\xi_{h}q_{0}^{''}l_{core}}{\rho c_{p}a_{r}v_{r}}\right)l_{h}$$

$$v_{r}=\sqrt[3]{\frac{\xi_{h}q_{0}^{''}l_{core}l_{h}\beta g}{\frac{\rho c_{p}a_{r}}{2}\sum\left\{ \left(\frac{fl}{D}+k\right)_{i}\left(\frac{a_{r}}{a_{i}}\right)^{2}\right\} }}$$
