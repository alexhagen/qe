---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---


---
layout: post-no-feature
---



Momentum Equation
=================

Applying the the GBE $\psi=\rho\vec{v}$, $\boldsymbol{J}=\boldsymbol{T}=p\boldsymbol{I}+\boldsymbol{\tau}$, and $\dot{\psi_{g}}=\rho\vec{g}$, we get

$$\underbrace{\frac{\partial\left(\rho\vec{v}\right)}{\partial t}}_{\substack{\text{rate of change}\\
\text{of momentum}\\
\text{per unit volume}
}
}+\underbrace{\nabla\cdot\left(\rho\vec{v}\vec{v}\right)}_{\substack{\text{momentum change}\\
\text{by convection}\\
\text{per unit volume}
}
}=-\underbrace{\nabla p}_{\substack{\text{pressure}\\
\text{force}
}
}-\underbrace{\nabla\cdot\boldsymbol{\tau}}_{\substack{\text{viscous}\\
\text{force}
}
}+\underbrace{\rho\vec{v}}_{\substack{\text{gravity}\\
\text{force}
}
}$$

By using the substantial derivative, this become’s Cauchy’s Equation of Motion: $\rho\frac{D\vec{v}}{Dt}=-\nabla p-\nabla\cdot\boldsymbol{\tau}+\rho\vec{g}$, which is idential in form to Newton’s Second Law of Motion: $\rho\vec{a}=\sum\vec{F}$.

Boussinesq Assumption
=====================

The boussinesq assumption is used in flows where gravity is important:

-   Thermal expansion causes density change.

-   This happens by the thermal expansion coefficient, $\beta$, $$\beta\equiv\frac{1}{\nu}\left.\frac{\partial\nu}{\partial T}\right)_{p}=\frac{1}{\rho}\left.\frac{\partial\rho}{\partial T}\right)_{p}$$

-   This density change is only important in gravity term.

Applying, we get

$$dp=-\rho\beta dT\;\;\therefore\;\;\rho-\overline{\rho}=-\overline{\rho}\beta\left(T-\overline{T}\right)$$

and putting into the momentum equations

$$\overline{\rho}\frac{D\vec{v}}{Dt}=-\cancelto{\nabla p_{dyn}}{\nabla p}-\nabla\cdot\boldsymbol{\tau}+\left[\cancelto{0}{\overline{\rho}}-\overline{\rho}\beta\left(T-\overline{T}\right)\right]\vec{g}$$
































