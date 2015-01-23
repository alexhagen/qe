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



General Balance Equation
========================

The general balance equation is given by

$$\underbrace{\frac{D}{Dt}\intop_{V_{m}}\psi dV}_{\substack{\text{change of $\psi$}\\
\text{per unit time}\\
\text{in volume $V_{m}$}
}
}=-\underbrace{\oint_{S_{m}}\boldsymbol{J}\cdot\vec{n}dS}_{\substack{\text{influx of $\psi$across}\\
\text{surface $S_{m}$}
}
}+\underbrace{\int_{V_{m}}\dot{\psi_{g}}dV}_{\substack{\text{generation of $\psi$}\\
\text{in volume $V_{m}$}
}
}$$

and by using the Reynold’s Transport Theorem: $\frac{D}{Dt}\int_{V_{m}}\psi dV=\int_{V_{m}}\left[\frac{\partial\psi}{\partial t}+\nabla\cdot\left(\psi\vec{v}\right)\right]dV$ and Greene’s Theorem: $\oint_{S_{m}}\boldsymbol{J}\cdot\vec{n}dS=\int_{V_{m}}\nabla\cdot\boldsymbol{J}dV$, we can write the form of the general balance equations as

$$\int_{V_{m}}\left[\frac{\partial\psi}{\partial t}+\nabla\cdot\left(\psi\vec{v}\right)=-\nabla\cdot\boldsymbol{J}+\dot{\psi_{g}}\right]dV$$

and, after differentiating:

$$\underbrace{\frac{\partial\psi}{\partial t}}_{\substack{\text{change of $\psi$}\\
\text{per unit time}\\
\text{per unit volume}
}
}\underbrace{\nabla\cdot\left(\psi\vec{v}\right)}_{\substack{\text{convection by}\\
\text{material motion}\\
\text{per unit volume}
}
}=-\underbrace{\nabla\cdot\boldsymbol{J}}_{\substack{\text{influx of $\psi$across}\\
\text{surface $S_{m}$per}\\
\text{unit volume}
}
}+\underbrace{\dot{\psi_{g}}}_{\substack{\text{generation of $\psi$}\\
\text{per unit volume}
}
}$$

Continuity Equation
===================

Applying the the GBE $\psi=\rho$, $\boldsymbol{J}=0$, and $\dot{\psi_{g}}=0$, we get

$$\frac{\partial\rho}{\partial t}+\nabla\cdot\left(\rho\vec{v}\right)=0$$

which is equivalent to (by FOIL): $\frac{\partial\rho}{\partial t}+\nabla\cdot\left(\rho\vec{v}\right)=\frac{\partial\rho}{\partial t}+\vec{v}\cdot\nabla\rho+\rho\nabla\cdot\vec{v}$

and using the substantial derivative’s definition: $\frac{D\rho}{Dt}\equiv\frac{\partial\rho}{\partial t}+\vec{v}\cdot\nabla\rho$ in the above equation, we get:

$$\frac{1}{\rho}\frac{D\rho}{Dt}=-\nabla\cdot\vec{v}$$

and assuming incompressible: $\frac{D\rho}{Dt}=0$, it is apparent that:

$$\nabla\cdot\vec{v}=0$$

















