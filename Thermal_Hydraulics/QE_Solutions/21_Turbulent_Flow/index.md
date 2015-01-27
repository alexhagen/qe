---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/2/15
title: Turbulent Flow
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
author: Alex Hagen
---


<<<<<<< HEAD
=======
Turbulent Flow Characteristics
==============================

Transition to turbulent flow is at $Re=\frac{\rho vD}{\mu}\geq2000$.

Derivation of Turbulent Flow Balance Equations
==============================================

We use the Reynold’s analogy to average, assuming

$$\left|\frac{\rho^{'}}{\rho}\right|\ll\left|\frac{v^{'}}{v}\right|\;\;\therefore\;\;\rho^{'}\approx0$$

So, solving the continuity equation

$$\frac{\partial\rho}{\partial t}+\nabla\cdot\rho\vec{v}=0\;\;\therefore\;\;\nabla\cdot\vec{v}=0\;\;\therefore\;\;\nabla\cdot\overline{v}=0\;\;\&\;\;\nabla\cdot v^{'}=0$$

Solving the momentum equation

$$\frac{\partial\rho\vec{v}}{\partial t}+\nabla\cdot\rho\vec{v}\vec{v}=-\nabla p+\mu\nabla^{2}\vec{v}+\rho\vec{g}$$

$$\frac{\partial\rho\overline{v}}{\partial t}+\nabla\cdot\rho\overline{v}\overline{v}=-\nabla p+\left[\mu\nabla^{2}\overline{v}-\nabla\cdot\rho\overline{v^{'}v^{'}}\right]+\rho\vec{g}$$

and so the turnblent flux or the Reynolds Stress is written as
$\boldsymbol{\tau}^{t}$ in:

$$\boldsymbol{\tau}=\left[\boldsymbol{\tau}^{\mu}+\boldsymbol{\tau}^{t}\right]=\left[-\mu\nabla\overline{v}+\rho\overline{v^{'}v^{'}}\right]$$

and so

$$\frac{\partial\rho\overline{v}}{\partial t}+\nabla\cdot\rho\overline{v}\overline{v}=-\nabla p-\nabla\cdot\mathbb{\tau}^{T}+\rho\vec{g}$$

in pipe flow, this is

$$\rho\left(\cancelto{0}{\frac{\partial\overline{v_{z}}}{\partial t}}+\cancelto{0}{\overline{v_{r}}\frac{\partial\overline{v_{z}}}{\partial r}}+\cancelto{0}{\frac{\overline{v_{\theta}}}{r}\frac{\partial\overline{v_{z}}}{\partial\theta}}+\cancelto{0}{\overline{v_{z}}\frac{\partial\overline{v_{z}}}{\partial z}}\right)=-\frac{\partial p}{\partial z}+\cancelto{0}{\rho g_{z}}-\left[\frac{1}{r}\frac{\partial}{\partial r}\left(r\tau_{rz}^{T}\right)+\cancelto{0}{\frac{1}{r}\frac{\partial\tau_{\theta z}^{T}}{\partial\theta}}+\cancelto{0}{\frac{\partial\tau_{zz}^{T}}{\partial z}}\right]$$

$$\frac{\partial p}{\partial z}=\frac{1}{r}\frac{\partial}{\partial r}\left(r\tau_{rz}^{T}\right)\;\;\therefore\;\;\tau_{rz}^{T}=-\frac{\Delta p}{L}\frac{r}{2}$$

and since the generation of turbulent is at the wall, the stress profile
and intensity are:
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
