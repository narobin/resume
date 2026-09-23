
#set document(
  title: [ $C_d A$ Derivations and Error ]
)

#title()

We begin with our ultimate goal: a measurement of $C_d A$. This is, at its most basic, the ratio between the ideal and actual mass flow rates in the fluid system times area. 

$
  C_d A = dot(m)_"actual" / dot(m)_"ideal" A
$

= Assumptions

+ Ideal gas
+ Neglegible effect of gravity
+ Steady flow
+ Inviscid flow
+ Incompressible flow
+ Only consider flow along a streamline

= Comments

- Incompressible flow may not be possible, the parts being tested may inherently choke the flow. We could limit the upstream pressure to prevent this, but that may increase error. Worth consideration.

= Derivation

== Actual Flow Rate

Luckily for us, we have a fancy flow meter which will tell us this value. No hard work here.

== Ideal Flow Rate

We begin with the conservation equation: @mass-flow

$
dot(m) = rho v A
$

Now, we have a measurement for $rho$, so no need to mess with that. However, we do not reliably know $v$. Thus we have to find an equation to substitute in. Our only other measurement is $p$. Thus we need an equation for $v$ (or even better $v A$) in terms of $p$ and known constants. Let's consider the equation of state:

$
p = rho R T
$

= Error Propogation

...

= Calibration

...

= Definitions

+ $C_d$ is the discharge coefficient
+ $A$ is the cross sectional area
+ $dot(m)$ is mass flow rate
+ $v$ is linear velocity
+ $p$ is pressure
+ $rho$ is density

#bibliography("bibliography.yml",
  style: "ieee",
)

$
  dot(x) = -7; dot(y) = 0
$

$
  theta &= arctan(y/x) \
  dot(theta) &= ((dot(y) x - y dot(x))/x^2)/(1 + (y/x)^2) \
  &= -(y dot(x)) / (x^2 + y^2) \
  &= -(y dot(x)) / r^2 \
  &= - sin(theta) / r dot(x) \ 
  &= 
$

