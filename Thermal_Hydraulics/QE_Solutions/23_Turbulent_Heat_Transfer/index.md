---
layout: post-no-feature
date: 1/6/15
title: Turbulent Heat Transfer
author: Alex Hagen
---


With the energy equation given by

$$c_{v}\left[\frac{\partial\rho T}{\partial t}+\nabla\cdot\rho T\vec{v}\right]=k\nabla^{2}T-\cancelto{0}{T\left.\frac{\partial p}{\partial T}\right)_{\rho}\nabla\cdot\vec{v}}-\cancelto{0}{\tau:\nabla\vec{v}}+\dot{q}$$

so

$$\rho c_{v}\left[\frac{\partial\overline{T}}{\partial t}+\nabla\cdot\overline{vT}\right]=\underbrace{k\nabla^{2}\overline{T}-\nabla\cdot\rho\overline{v^{'}T^{'}}}_{-\nabla\cdot\left[\vec{q}^{k}+\vec{q}^{t}\right]}+\dot{q}$$

Now, using Reynold’s analogy, we have

$$\frac{\tau^{t}}{\rho}=-\varepsilon_{M}\frac{\partial u}{\partial y}\;\;\dblcolon\;\;\frac{q^{''}}{\rho c}=-\varepsilon_{H}\frac{\partial T}{\partial y}$$

Using Prandtl’s Mixing Length model,

$$q^{''}=\frac{Q}{A}=-\frac{1}{A}\frac{\delta m}{\delta t}c\delta T=-\rho\left|v_{y}^{'}\right|cl\frac{dv_{x}}{dy}=-\rho cl\left|v_{y}^{'}\right|\frac{dv_{x}}{dy}$$

with

$$\varepsilon_{H}\equiv l\left|v_{y}^{'}\right|$$

And, for moderate $Pr$ numbers, $\varepsilon_{H}=\varepsilon_{M}$, so,
using the universal log profile or the $\nicefrac{1}{7}$, we get
