# Reactions: the transfer criterion, and a better inadmissibility diagnostic

Notes on the restricted bivariate normal experiment.
Setup: $X\sim N_2(\mu,I_2)$, $\Lambda=\{\mu_2\le\mu_1\}$, $\Lambda_0=\{\mu_1\le0\}$, $\Lambda_1=\{\mu_1>0\}$.
Throughout, $T_1=x_1+x_2$, $T_2=-x_2$, and the restricted-likelihood order is
$$x\succeq_\Lambda y \iff x_1+x_2\ge y_1+y_2 \ \text{and}\ x_2\le y_2,$$
i.e. the product order on $(T_1,T_2)$. Writing $\mu=(u,u-v)$ with $u>0,\,v\ge0$,
$$L_\mu(x)=\exp\{u\,T_1(x)+v\,T_2(x)-\tfrac12(\mu_1^2+\mu_2^2)\},$$
so the likelihood ratio is nondecreasing in $(T_1,T_2)$ for **every** $\mu\in\Lambda_1$.

## On Proposition 1 (the transfer domination criterion)

It is correct, and conceptually it is the right engine: it isolates $\succeq_\Lambda$ as the only
order that matters on $\Lambda_1$. But as a *search* tool it has two frictions.

1. **It is "verify a given dominator," not "diagnose a test."** You must already hand it the
   gain/loss sets $B,D$ and a coupling supported on $\{x\succeq_\Lambda y\}$ — i.e. you have
   effectively built the dominator before the proposition applies.
2. **It certifies power-domination on $\Lambda_1$, not level.** The transfer preserves null mass at
   $\mu=0$ (that is $P_0(B)=P_0(D)$), but size is $\sup_{\Lambda_0}$, and a $\succeq_\Lambda$-transfer is
   not sign-definite on $\Lambda_0$. The rectangle$\to$gated case slipped past this only because the
   gated set is coordinatewise monotone, so its size sits at $\mu=0$ for free.

So keep Proposition 1 as the closing certificate, not the diagnostic.

## A better diagnostic: monotonicity in $(x_1+x_2,\,-x_2)$

Because $L_\mu$ is $\succeq_\Lambda$-nondecreasing for every $\mu\in\Lambda_1$:

> **Diagnostic.** If the rejection region $R$ is not a $\succeq_\Lambda$-upper set — i.e. there exist
> $x\in R$ and $y\notin R$ with $y_1+y_2\ge x_1+x_2$ and $y_2\le x_2$ — then $\phi$ is a candidate for
> inadmissibility: its $\succeq_\Lambda$-monotone rearrangement weakly beats it on all of $\Lambda_1$.

This needs **no dominator** — you exhibit one violating pair. The only caveat is the same level
point as above: to upgrade "candidate" to "inadmissible," take the rearrangement inside the
coordinatewise-monotone (M1) class, where size returns to $\mu=0$.

## Convex form: the inadmissibility signal is a normal past the diagonal

For convex $A$, "$R$ is $\succeq_\Lambda$-upper" is exactly "every supporting normal lies in
$P^\ast=\{a:a_1\ge0,\ a_2\le a_1\}$." Compare the two cones:
$$\mathcal F=\{0\le a_2\le a_1\}\quad(\text{sufficient, Thm 1})\ \subsetneq\ P^\ast=\{a_1\ge0,\ a_2\le a_1\}\quad(\text{necessary}).$$

- A normal in $\mathcal F$: certified admissible.
- A normal with $a_2<0$ (but $a_2\le a_1$): $\succeq_\Lambda$-fine but not coordinatewise monotone —
  a separate regime (the test decreases in $x_2$ there).
- **A normal with $a_2>a_1$** (a face tilted past the $45^\circ$ diagonal toward the $x_2$-axis):
  fails even the necessary condition $\Rightarrow$ inadmissibility signal. This single check catches
  the $X_2$-only test, the difference test, every finite rectangle, and the long test.

Within coordinatewise-monotone convex tests, monotonicity forces $a\ge0$, so the $a_2<0$ gap
closes and failing $\mathcal F$ is *exactly* having a normal with $a_2>a_1$. So within the natural
(Andrews–Soares) class one expects
$$\text{admissible}\iff\text{all supporting normals in }\mathcal F,$$
the $\Rightarrow$ being Theorem 1 and the $\Leftarrow$ provable by rotating the offending face toward
the diagonal $(1,1)$, recalibrating to keep $P_0$-mass at $1-\alpha$, staying a convex lower set so
size stays at $\mu=0$. (This is the rectangle$\to$gated construction run on one face.)

## MMM / identity-QLR is easy to *diagnose*

The acceptance set $\{(x_1^+)^2+(x_2^+)^2\le r^2\}$ has outward normals $\propto(x_1^+,x_2^+)$ along the
circular arc, so the whole upper arc ($x_2>x_1$) carries normals with $a_2>a_1$, and the $x_1\le0$
face has normal $(0,1)$. It fails the diagnostic on sight. The order-violation is a one-liner: pick
$r<r'<\sqrt2\,r$ and take
$$x=(0,r')\ (\text{rejected: }S=r'^2>r^2),\qquad y=(r'/2,\,r'/2)\ (\text{accepted: }S=r'^2/2<r^2).$$
Then $y_1+y_2=r'=x_1+x_2$ and $y_2=r'/2<r'=x_2$, so $y\succeq_\Lambda x$ with $x\in R$, $y\notin R$.
MMM is therefore inadmissible — diagnosed with no dominator built. Constructing the explicit
dominator (shave the upper arc, push mass to larger $x_1+x_2$ / smaller $x_2$, recalibrate) is the
messier step you only do once the answer is worth the trouble.

## Bottom line

Keep Proposition 1 as the certificate; lead with the $\succeq_\Lambda$-monotonicity check (a normal
past the diagonal) as the from-geometry inadmissibility diagnostic; and the same machinery should
deliver the necessity of $\mathcal F$ within the coordinatewise-monotone convex class — converting the
sufficient theorem into an iff on the class that matters.
