# Fabel's comments on the bivariate iff result

August 28, 2026

## Bottom line

Fabel's main interpretation is correct and useful: the bivariate feasible-normal theorem is a transfer-order monotonicity theorem in disguise. In the one-core, one-redundant model, the mean-space dual cone is nontrivial, its image under the covariance matrix generates the sample-space transfer order, and monotonicity with respect to that order is equivalent to the feasible-normal condition. This is why the necessity proof can be built from transfers, rearrangement, a lower hull, and calibration.

When there are at least two core moments, the dual cone collapses to zero. The transfer order then becomes trivial, so transfer monotonicity imposes no restriction. At the same time, the original feasible-normal set remains nontrivial because it is defined through the nonconvex mean space rather than through its convex hull. The feasible-normal condition therefore retains value as a sufficient ray-exposure condition, but loses the monotonicity interpretation that made it necessary in the bivariate problem.

This observation puts the bivariate iff theorem and the multiple-core admissibility results under one organizing principle. A nontrivial dual cone supports transfer and rearrangement arguments. A trivial dual cone instead forces first-moment matching by every weak dominator and supports admissibility arguments.

Two qualifications should be retained. First, a nontrivial dual cone permits domination mechanisms but does not imply that every test is dominated. Second, the conjecture that every nice test is admissible with multiple cores remains open.

## 1. The transfer cone is the covariance image of the alternative dual

In the bivariate model,

\[
\Lambda_1=\{\mu:\mu_1>0,\ \mu_2\le\mu_1\}.
\]

Its dual cone is

\[
\Lambda_1^*
=
\operatorname{cone}\{e_1,e_1-e_2\}.
\]

For

\[
\Omega_\rho=
\begin{pmatrix}
1&\rho\\
\rho&1
\end{pmatrix},
\]

we have

\[
\Omega_\rho e_1=(1,\rho)',
\qquad
\Omega_\rho(e_1-e_2)=(1-\rho)(1,-1)'.
\]

Consequently,

\[
\boxed{
\Pi_\rho=\Omega_\rho\Lambda_1^*
=\operatorname{cone}\{(1,\rho),(1,-1)\}.
}
\]

This identity explains the two likelihood-ratio scores in the proof. The ray $(1,\rho)$ raises the common-shift score while leaving the slack score unchanged; the ray $(1,-1)$ raises the slack score while leaving the common-shift score unchanged. These are not ad hoc geometric directions. They are the covariance images of the two extreme directions in the dual of the alternative.

The same identity holds in the general Gaussian experiment if the sample-space transfer cone is defined by

\[
\Pi:=\Omega\Lambda_1^*.
\]

When $|\mathcal C|\ge2$, the general dual-cone calculation gives

\[
\Lambda_1^*=\{0\},
\qquad
\Pi=\{0\}.
\]

The transfer hull then satisfies $\operatorname{cl}(A-\Pi)=A$. Thus the transfer, hull, and rearrangement machinery used for bivariate necessity has no nonzero common direction on which to operate. This does not make the multiple-core problem harder for admissibility. It makes the transfer-based necessity condition empty and activates the first-moment identity instead.

## 2. What the bivariate iff theorem is really characterizing

The feasible cone in the bivariate problem is

\[
\mathcal F_\rho
=
\{a:0\le a_2\le a_1\}.
\]

It also has the representation

\[
\mathcal F_\rho
=
\mathbf R_+^2\cap\Pi_\rho^*.
\]

Let $A$ be closed, convex, and coordinatewise lower. Then the following conditions are equivalent:

1. Every nonzero finite-support direction of $A$ belongs to $\mathcal F_\rho$.
2. The region is $\Pi_\rho$-lower:

   \[
   x\in A,\ p\in\Pi_\rho
   \quad\Longrightarrow\quad
   x-p\in A.
   \]

To see the first implication, represent $A$ as the intersection of its supporting halfspaces. If a finite normal $a$ is feasible, then $a'p\ge0$ for every $p\in\Pi_\rho$. Hence subtracting $p$ cannot violate the halfspace $a'x\le h_A(a)$.

For the converse, $\Pi_\rho$-lowerness implies

\[
-\Pi_\rho\subseteq\operatorname{rec}(A).
\]

Any finite-support normal must be nonnegative because $A$ is coordinatewise lower, and it must lie in $\Pi_\rho^*$ because it cannot increase along a recession direction. It therefore belongs to $\mathbf R_+^2\cap\Pi_\rho^*=\mathcal F_\rho$.

Combining this equivalence with the proved theorem gives a more revealing statement:

\[
\boxed{
\phi_A\text{ is admissible}
\quad\Longleftrightarrow\quad
A\text{ is }\Pi_\rho\text{-lower}.
}
\]

Thus the iff theorem is a monotonicity theorem. The finite-normal formulation is an equivalent convex-analytic encoding of monotonicity in this particular model.

There is also no distinction here between the old condition, which requires every finite-support direction to be feasible, and the newer feasible-support condition, which checks only the halfspaces needed to determine $A$. With one core moment, $\Lambda$ is defined by linear inequalities and $\mathcal F$ is a closed convex cone. A separation argument then shows that feasible support implies feasibility of every finite-support direction. The two conditions can separate only after multiple cores make the relevant mean space nonconvex. The symmetric gate provides the basic example: its facet normals are feasible, but their sum $(1,1,2)$ is an infeasible finite-support direction.

## 3. Why the condition becomes too strong with multiple cores

Enlarging the alternative makes admissibility easier, not harder. A putative dominator must satisfy its power inequalities at more parameter values. In the multiple-core max-envelope model, the convex hull of the alternative directions is all of $\mathbf R^d$, which is reflected in

\[
\Lambda_1^*=\{0\}.
\]

The transfer-monotonicity condition therefore becomes vacuous: every set is automatically lower with respect to the zero cone. This is the correct degeneration of the bivariate necessary condition.

The feasible-normal set does not become all of $\mathbf R_+^d$. It remains

\[
\mathcal F(\Omega,\Lambda)
=
\{a\ge0:\Omega a\in\Lambda\},
\]

and $\Lambda$ is nonconvex when there are several core moments. Thus feasible normals detach from their bivariate interpretation as the polar of a nontrivial transfer order. They continue to expose valid likelihood-ratio rays and therefore provide a sufficient admissibility condition, but they are not necessary. The admissible redundant-only halfspace and the admissible rectangle with two cores and one redundant moment make this failure of necessity explicit.

The complementary fact is that a weak dominator must now satisfy

\[
\Omega^{-1}E_0[Xh]\in\Lambda_1^*=\{0\},
\]

and hence

\[
E_0[Xh]=0.
\]

The same dual cone therefore powers different tools in the two regimes. When it is nontrivial, it supplies directions for transfer-based dominators. When it is trivial, it overdetermines the first moments of any putative dominator and supports admissibility proofs.

This does not establish that no possible support-based characterization exists in the multiple-core model. What it establishes is narrower and sufficient for the current paper: neither the bivariate transfer-monotonicity condition nor the feasible-normal condition can be necessary there. A characterization, if one exists, must incorporate more than these directional conditions. The conjecture that all nice tests are admissible is one possible answer, not a proved consequence.

## 4. The covariance-free feasible cone is a bivariate accident

In two dimensions,

\[
(\Omega_\rho a)_1-(\Omega_\rho a)_2
=(1-\rho)(a_1-a_2),
\]

so

\[
\mathcal F_\rho=\{a:0\le a_2\le a_1\}
\]

for every $-1<\rho<1$. This covariance invariance should not be presented as a general feature of singleton-core models.

An actual feasibility flip occurs already in dimension three. Let

\[
\mathcal C=\{1\},
\qquad
\mathcal R=\{2,3\},
\qquad
a=(1,1,1)'.
\]

Under identity covariance,

\[
I_3a=(1,1,1)',
\]

so $a$ is feasible because both redundant means equal the core mean. Now take

\[
\Omega=
\begin{pmatrix}
1&0&0\\
0&1&0.8\\
0&0.8&1
\end{pmatrix}.
\]

This is a positive-definite correlation matrix, but

\[
\Omega a=(1,1.8,1.8)'.
\]

Both redundant coordinates now exceed the core coordinate. Thus the same normal $a$ is feasible under $I_3$ and infeasible under $\Omega$.

The higher-dimensional singleton-core problem therefore has an $\Omega$-dependent feasible cone. Any necessity theorem in that setting must retain the covariance matrix in its geometry.

## 5. The conditional rearrangement is the most portable part

The conditional rearrangement has a dimension-free core. In the general singleton-core model, write $\mathcal C=\{1\}$ and define

\[
Z=X_1,
\qquad
E=X_{\mathcal R}-\Omega_{\mathcal R1}X_1.
\]

Because $\Omega$ is a correlation matrix, $Z$ is independent of the $(d-1)$-dimensional Gaussian residual $E$. A move by

\[
q:=\Omega e_1
\]

reduces $Z$ while leaving $E$ unchanged. Consequently,

\[
A\text{ is }q\text{-lower}
\quad\Longleftrightarrow\quad
\text{every }Z\text{-section of }A\text{ given }E=e
\text{ is a left halfline}.
\]

The conditional rearrangement replaces each section by a left halfline with the same conditional probability under $P_0$. It therefore preserves null probability. Since $E_\mu Z=\mu_1>0$ at every alternative, the conditional Neyman--Pearson inequality weakly reduces acceptance probability at every alternative, and does so strictly whenever a positive-measure collection of sections differs from a left halfline.

The level calculation also extends. Under the null,

\[
\mu_1\le0,
\qquad
\mu_r\le\mu_1,
\]

and therefore

\[
E_\mu E_r
=
\mu_r-\Omega_{r1}\mu_1
\le
(1-\Omega_{r1})\mu_1
\le0.
\]

Thus the transformed null mean is coordinatewise nonpositive. If the rearranged cutoff is coordinatewise nonincreasing in $e$, the rearranged acceptance region is lower in $(Z,E)$ coordinates and remains level $\alpha$.

This is the natural starting point for extending necessity to $d\ge3$ with one core moment. Two qualifications matter:

- The weak rearrangement and its conditional Neyman--Pearson comparison do not require convexity. The current proof of strict improvement from a pointwise failure of $q$-lowerness does use closedness and convexity to produce a positive-measure family of non-left sections. Without that regularity, strictness must be stated directly in terms of a positive-measure section failure.
- The relevant requirement is a statistic whose mean is strictly positive at every alternative. In the present model, $Z=X_1$ has this property because $\mu_1>0$ on $\Lambda_1$. This is not equivalent to requiring the corresponding vector to lie in the interior of $\Lambda_1^*$. Indeed, $e_1$ is on the boundary of the cone in the multi-redundant singleton-core model, while $e_1'\mu=\mu_1>0$ at every alternative.

Subject to these qualifications, Fabel's assessment is right: the conditional rearrangement is more portable than the subsequent slice geometry.

## 6. The hidden equivalence and the two-stage proof

In the bivariate negative-correlation proof, let

\[
Z=X_1,
\qquad
E=X_2-\rho X_1,
\qquad
q_\rho=(1,\rho)'.
\]

Moving from $x$ to $x-tq_\rho$ changes $Z$ to $Z-t$ and leaves $E$ fixed. Hence, for a closed acceptance region,

\[
A\text{ is }q_\rho\text{-lower}
\quad\Longleftrightarrow\quad
\text{each }Z\text{-section given }E\text{ is a left halfline}
\quad\Longleftrightarrow\quad
\text{the conditional rearrangement is idle}.
\]

Making this equivalence explicit turns the negative-correlation necessity proof into a two-stage algorithm:

1. **Rearrange.** If some conditional sections are not left halflines, replace them by equal-null-mass left halflines. This strictly improves power and completes the necessity argument.
2. **Hull and calibrate.** If the rearrangement is idle, $A$ is already lower along the covariance ray $q_\rho$. This directional monotonicity yields the slope bound needed to order the gain and loss sets after taking the transfer hull and recalibrating with the diagonal score.

This formulation also identifies the higher-dimensional bottleneck. The conditional rearrangement still acts on a scalar $Z$ given a vector residual $E$. What becomes difficult is the geometry after rearrangement: the bivariate boundary functions $\beta$, $m$, and $M$ become functions on $\mathbf R^{d-1}$, and the transfer hull has several redundant-specific gate directions. The missing result is a multivariate analogue of the slice formula and the gain-loss separation, not a new rearrangement principle.

## 7. Implications for the paper and the extension plan

The current result set can be presented as follows.

1. For one core and one redundant moment, the feasible-normal condition is necessary and sufficient for every bivariate correlation matrix. Equivalently, admissibility is characterized by monotonicity under the transfer order $\Pi_\rho=\Omega_\rho\Lambda_1^*$.
2. For at least two core moments, the dual cone is trivial. Feasible support remains sufficient, but first-moment rigidity yields a strictly larger admissible class, including every nonnegative halfspace and every rectangle with one redundant moment.
3. With one core and several redundant moments, identity-covariance rectangles are known to be dominated, but necessity for every bad-normal nice region remains open. The conditional rearrangement extends naturally; the multivariate hull and calibration geometry is the missing step.
4. With at least two cores, the first unresolved polyhedral cases require at least two essential infeasible facets. This is a different frontier from the higher-dimensional singleton-core necessity problem.

The most concrete next task on the one-core side is therefore:

> Prove a $d\ge3$ conditional rearrangement lemma using $Z=X_1$ and $E=X_{\mathcal R}-\Omega_{\mathcal R1}X_1$, with strictness stated under the maintained closed-convex-lower assumptions. Then determine whether the resulting $q$-lower region admits a multivariate feasible hull and calibration whose gain and loss measures can be ordered over the entire singleton-core alternative.

This task is separate from the multiple-core two-bad-facet problem. The former asks whether the bivariate necessity theorem extends when the transfer cone remains nontrivial but becomes higher-dimensional. The latter asks whether any directional necessity condition survives once the transfer cone has collapsed to zero.
