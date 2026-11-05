# Compact notes for future work: admissibility, convexity, restricted-space tests

This memo is intended to let a future chat resume the project quickly. It summarizes the current state of the unrestricted Lehmann--Romano proof, the restricted-space counterexample, and the proposed class-restricted route for comparing the short and long tests.

## Role shorthand

When the user says **Yoda**, use the following mode: act as a top-tier statistician/econometrician, in the style of Joe Romano. Be rigorous, proof-oriented, skeptical of unsupported claims, and focused on admissibility, testing, convex acceptance regions, normal experiments, and the project below. Do not invoke external results unless a formal statement and confirmed reference are provided.

## Basic normal testing setup

We study

\[
X\sim N(\mu,\Sigma),
\]

where \(\Sigma\) is known and positive definite. The basic test is

\[
H_0:\mu\in\Lambda_0,
\qquad
H_1:\mu\in\Lambda_1=\Lambda\setminus\Lambda_0,
\]

with finite-sample size constraint

\[
\sup_{\mu\in\Lambda_0}E_\mu[\varphi(X)]\le \alpha.
\]

For the unrestricted benchmark,

\[
\Lambda=\mathbf R^k,
\qquad
\Lambda_0=\{\mu:\mu\le 0\},
\qquad
\Lambda_1=\mathbf R^k\setminus \Lambda_0.
\]

The acceptance region of a nonrandomized test is

\[
A_\varphi=\{x:\varphi(x)=0\}.
\]

## Corrected status of the unrestricted theorem

The originally stated theorem claimed an equivalence:

\[
\varphi\text{ admissible}
\quad\Longleftrightarrow\quad
A_\varphi\text{ closed and convex}.
\]

This is too strong as stated.

The Lehmann--Romano-supported result is a **sufficiency** theorem, not a full iff theorem:

1. Closed convex acceptance region gives **d-admissibility**.
2. Closed convex acceptance region plus exact size attained at a finite null point gives **alpha-admissibility**.

The exact-size condition is necessary for alpha-admissibility. Example: the zero test \(\varphi\equiv 0\) has acceptance region \(\mathbf R^k\), which is closed and convex, and satisfies the level constraint for every \(\alpha>0\), but it is not alpha-admissible. It is dominated by nontrivial level-alpha tests. This objection does not apply to d-admissibility because d-domination also requires the competing test to be no larger on the null.

Literal necessity of closedness/convexity also needs null-set caveats. Normal distributions are absolutely continuous, so changing an acceptance region on a Lebesgue-null set does not change any power function.

## Lehmann--Romano result being used

Reference: Lehmann and Romano, *Testing Statistical Hypotheses*, Section 6.7, Theorem 6.7.1 and Corollary 6.7.1.

Formal content needed from LR:

Consider an exponential family with density

\[
p_\theta(x)=C(\theta)\exp\left\{\sum_{j=1}^s\theta_jT_j(x)\right\}.
\]

Let \(\Omega_H\) be the null parameter set and \(\Omega'\) a class of alternatives. Let \(\varphi_0\) be a nonrandomized test with closed convex acceptance region \(A_0\) in the statistic space. LR require the ray condition:

If

\[
A_0\cap\left\{t:\sum_j a_jt_j>c\right\}=\emptyset,
\]

then there exist \(\theta^*\in\Omega\) and \(\lambda_n\to\infty\) such that

\[
\theta^*+\lambda_n a\in\Omega'.
\]

Then, if another acceptance region \(A\) satisfies

\[
P_\theta(X\in A)\le P_\theta(X\in A_0)
\qquad\text{for all }\theta\in\Omega',
\]

LR conclude that \(A\subseteq A_0\) up to null sets.

LR Corollary 6.7.1 implies:

- Under these assumptions, the test with acceptance region \(A_0\) is d-admissible.
- If its size is \(\alpha\) and there exists a finite point \(\theta_0\in\overline{\Omega}_H\) such that \(E_{\theta_0}\varphi_0(X)=\alpha\), then it is alpha-admissible.

Important technical point: LR state that Theorem 6.7.1 and the corollary extend to randomized competitors, but the maintained test \(\varphi_0\) itself must be nonrandomized. In the proof we should invoke the corollary directly for randomized competitors. Do not rely on the geometric containment argument \(A\subseteq A_0\Rightarrow \varphi\ge\varphi_0\) unless the competitor is nonrandomized.

## Unrestricted normal proof from LR

For the normal location model,

\[
X\sim N(\mu,\Sigma),
\qquad
\theta=\Sigma^{-1}\mu.
\]

With respect to \(P_0=N(0,\Sigma)\),

\[
\frac{dP_\theta}{dP_0}(x)
=
\exp\left\{\theta'x-\frac12\theta'\Sigma\theta\right\}.
\]

So the statistic is \(T(X)=X\), the natural parameter space is \(\Omega=\mathbf R^k\), and

\[
\Omega_H=\{\theta:\Sigma\theta\le 0\},
\qquad
\Omega_K=\{\theta:\Sigma\theta\not\le 0\}.
\]

Let \(\varphi_0\) be a nonrandomized level-alpha test with closed convex acceptance region \(A_0\). To apply LR, verify the ray condition.

Suppose

\[
A_0\subseteq\{x:a'x\le c\}.
\]

If \(\Sigma a\le 0\), then for \(\theta_\lambda=\lambda a\), the mean is

\[
\mu_\lambda=\Sigma\theta_\lambda=\lambda\Sigma a\le 0,
\]

so \(\theta_\lambda\in\Omega_H\). But under \(\theta_\lambda\),

\[
a'X\sim N(\lambda a'\Sigma a, a'\Sigma a).
\]

Since \(\Sigma\) is positive definite and \(a\ne0\), \(a'\Sigma a>0\), so

\[
P_{\theta_\lambda}(a'X>c)\to 1.
\]

Because \(A_0\subseteq\{a'x\le c\}\), the rejection region contains \(\{a'x>c\}\). Thus the test would have null rejection probability tending to 1, contradicting level \(\alpha<1\). Hence \(\Sigma a\not\le 0\).

Therefore for \(\theta_\lambda=\lambda a\),

\[
\mu_\lambda=\lambda\Sigma a
\]

has at least one positive coordinate, so \(\theta_\lambda\in\Omega_K\). The LR ray condition holds with \(\theta^*=0\).

Conclusion:

- \(A_0\) closed convex implies d-admissibility.
- If in addition the size is \(\alpha\) and is attained at a finite null point, then \(\varphi_0\) is alpha-admissible.

A concise TeX proof implementing this is in:

- `theorem1-lr-proof-updatedV2.tex`
- `theorem1-lr-proof-updatedV2.pdf`

## Important correction about directions

The LR ray direction \(a\) is a **natural-parameter direction**, not directly a mean direction. Since

\[
\mu=\Sigma\theta,
\]

a natural ray \(\theta^*+\lambda a\) corresponds to the mean ray

\[
\Sigma\theta^*+\lambda\Sigma a.
\]

So the relevant mean direction is \(\Sigma a\), not \(a\), unless \(\Sigma=I_k\).

## Role of the condition \(A_\varphi\supseteq \Lambda_0\) or \(A_\varphi\supseteq \Pi_0\)

In the Romano--Shaikh-style informal statement, the condition is that the acceptance region is a closed convex subset containing the null region \(\Pi_0\) or \(\Lambda_0\). The statement is roughly:

\[
A_\varphi\text{ closed convex and }A_\varphi\supseteq\Lambda_0
\quad\Longrightarrow\quad
\varphi\text{ is d-admissible},
\]

and if the size supremum is attained with equality, then \(\varphi\) is alpha-admissible.

For the unrestricted LR proof above, \(A_\varphi\supseteq\Lambda_0\) was not needed because the LR ray condition was verified directly from level control. But this containment condition may become important in the restricted-space problem. It geometrically aligns the acceptance region with the null cone and rules out some unnatural convex acceptance regions. Keep it as a live candidate assumption when returning to the restricted theorem.

## Restricted-space problem

The main object of interest is the bivariate restricted problem

\[
\Lambda=\{(\mu_1,\mu_2):\mu_2\le \mu_1\}.
\]

The null is

\[
\Lambda_0=\{\mu\in\Lambda:\mu_1\le0,\mu_2\le0\},
\]

and the alternative is

\[
\Lambda_1=\Lambda\setminus\Lambda_0.
\]

Because \(\mu_2\le\mu_1\), this is equivalently

\[
\Lambda_0=\{\mu\in\Lambda:\mu_1\le0\},
\qquad
\Lambda_1=\{\mu\in\Lambda:\mu_1>0\}.
\]

The motivating tests are:

Short test:

\[
\varphi_s(x)=1\{x_1>c_s\},
\qquad
P_0(X_1>c_s)=\alpha.
\]

Long test:

\[
\varphi_l(x)=1\{\max(X_1,X_2)>c_l\},
\qquad
P_0(\max(X_1,X_2)>c_l)=\alpha.
\]

The long test uses \(X_2\) symmetrically with \(X_1\), while the short test ignores \(X_2\). Under \(\mu_2\le\mu_1\), \(X_2\) is neither fully irrelevant nor fully symmetric with \(X_1\).

## The original restricted Theorem 2 is false

The proposed theorem

\[
\varphi\text{ admissible on }\Lambda
\quad\Longleftrightarrow\quad
A_\varphi\text{ closed and convex}
\]

is false.

Counterexample for \(\Sigma=I_2\): let

\[
q_\alpha=\Phi^{-1}(1-\alpha)
\]

and define

\[
\varphi_\Delta(x)=1\{x_2-x_1>\sqrt2 q_\alpha\}.
\]

Its acceptance region is the closed convex halfspace

\[
A_\Delta=\{x:x_2-x_1\le\sqrt2 q_\alpha\}.
\]

But on the restricted parameter space,

\[
\mu_2-\mu_1\le0,
\]

so

\[
X_2-X_1\sim N(\mu_2-\mu_1,2)
\]

has mean never positive. Hence

\[
E_\mu[\varphi_\Delta]\le\alpha
\]

throughout \(\Lambda\).

By contrast, the short test satisfies

\[
E_\mu[\varphi_s]=1-\Phi(q_\alpha-\mu_1)>\alpha
\]

for every restricted alternative, since every restricted alternative has \(\mu_1>0\). Thus the short test strictly dominates \(\varphi_\Delta\) on \(\Lambda_1\), even though \(A_\Delta\) is closed and convex.

The counterexample rejects in the infeasible direction

\[
a=(-1,1),
\qquad
a'x=x_2-x_1.
\]

This direction points toward increasing \(\mu_2-\mu_1\), which the restricted parameter space does not allow.

## Lesson from the counterexample

Restriction of the parameter space can create domination. A test may spend rejection probability in directions corresponding to alternatives that no longer exist. Closed convexity alone does not prevent this.

For the cone

\[
\Lambda=\{\mu:\mu_2\le\mu_1\},
\]

the recession cone is

\[
\operatorname{rec}(\Lambda)=\{d:d_2\le d_1\}.
\]

In the case \(\Sigma=I_2\), a natural feasible-direction condition is \(a_1\ge a_2\). For general \(\Sigma\), compatibility should be stated through the natural-to-mean mapping, roughly using \(\Sigma a\).

However, a universal condition that all support directions of \(A\) must satisfy \(a_1\ge a_2\) is too strong: it would exclude the long test, whose acceptance region

\[
A_l=\{x_1\le c_l,x_2\le c_l\}
\]

has support directions \((1,0)\) and \((0,1)\), and \((0,1)\) is not feasible by itself.

## Reframed end goal

The practical goal is to prove that the short and long tests do **not** dominate each other.

A more general and cleaner target is:

Find a class \(\mathcal C\) of reasonable tests such that

\[
\varphi_s,\varphi_l\in\mathcal C,
\]

and every test in \(\mathcal C\) with closed convex acceptance region is admissible relative to \(\mathcal C\).

This would imply mutual non-domination of short and long. If one dominated the other, that would be domination by another member of \(\mathcal C\), contradicting class-admissibility.

## Candidate class for \(k=2,\Sigma=I_2\)

Let \(\mathcal C_{\le\alpha}\) be the class of nonrandomized tests \(\varphi:\mathbf R^2\to\{0,1\}\) satisfying:

1. Level condition:

\[
\sup_{\mu\in\Lambda_0}E_\mu[\varphi(X)]\le\alpha.
\]

2. Coordinatewise monotonicity:

\[
x\le y\text{ coordinatewise}
\quad\Longrightarrow\quad
\varphi(x)\le\varphi(y).
\]

3. Order-respecting priority of coordinate 1:

\[
x_1\ge x_2
\quad\Longrightarrow\quad
\varphi(x_1,x_2)\ge\varphi(x_2,x_1).
\]

Equivalent rejection-region form:

\[
x_1\ge x_2,
\quad
(x_2,x_1)\in R_\varphi
\quad\Longrightarrow\quad
(x_1,x_2)\in R_\varphi.
\]

Equivalent acceptance-region form:

\[
x_1\ge x_2,
\quad
(x_1,x_2)\in A_\varphi
\quad\Longrightarrow\quad
(x_2,x_1)\in A_\varphi.
\]

Define the exact-size subclass

\[
\mathcal C_\alpha
=
\{\varphi\in\mathcal C_{\le\alpha}:\sup_{\mu\in\Lambda_0}E_\mu[\varphi(X)]=\alpha\}.
\]

For coordinatewise monotone tests, the least favorable null is \(\mu=0\). Indeed, if \(\mu\le\nu\), then with a common \(Z\sim N(0,I_2)\), \(\mu+Z\le\nu+Z\) coordinatewise almost surely, so

\[
E_\mu[\varphi(X)]\le E_\nu[\varphi(X)].
\]

Since every \(\mu\in\Lambda_0\) satisfies \(\mu\le0\),

\[
\sup_{\mu\in\Lambda_0}E_\mu[\varphi(X)]=E_0[\varphi(X)].
\]

## Short and long tests in the class

Short test:

\[
\varphi_s(x)=1\{x_1>c_s\},
\qquad
c_s=\Phi^{-1}(1-\alpha).
\]

Acceptance region:

\[
A_s=\{x:x_1\le c_s\}.
\]

This is closed, convex, coordinatewise monotone, and order-respecting.

Long test:

\[
\varphi_l(x)=1\{\max(x_1,x_2)>c_l\},
\qquad
c_l=\Phi^{-1}(\sqrt{1-\alpha}).
\]

Acceptance region:

\[
A_l=\{x:x_1\le c_l,x_2\le c_l\}.
\]

This is closed, convex, coordinatewise monotone, and symmetric, hence order-respecting.

The class excludes the bad counterexample \(1\{X_2-X_1>c\}\) and an \(X_2\)-only test \(1\{X_2>c\}\), because those privilege coordinate 2 over coordinate 1.

## Ordered rectangular subclass

A useful tractable subclass is given by rectangular acceptance regions

\[
A_{c_1,c_2}=\{x_1\le c_1,x_2\le c_2\}.
\]

The corresponding test rejects when

\[
x_1>c_1\quad\text{or}\quad x_2>c_2.
\]

The order-respecting priority condition is equivalent to

\[
c_1\le c_2.
\]

Thus coordinate 1 has a weakly lower rejection cutoff than coordinate 2. Exact size under \(N(0,I_2)\) gives

\[
\Phi(c_1)\Phi(c_2)=1-\alpha.
\]

This subclass interpolates between:

Short test:

\[
(c_1,c_2)=(\Phi^{-1}(1-\alpha),\infty),
\]

and long test:

\[
c_1=c_2=\Phi^{-1}(\sqrt{1-\alpha}).
\]

This may be the first place to prove a rigorous class-admissibility or mutual non-domination result.

## Candidate restricted theorem

The candidate theorem is:

Let \(X\sim N_2(\mu,I_2)\), with

\[
\Lambda=\{\mu:\mu_2\le\mu_1\}.
\]

If \(\varphi\in\mathcal C_\alpha\) and \(A_\varphi\) is closed and convex, then \(\varphi\) is admissible relative to \(\mathcal C_{\le\alpha}\).

A possible stronger conjecture is an iff statement within \(\mathcal C_\alpha\), but necessity needs null-set caveats and has not been proved.

Admissibility relative to \(\mathcal C_{\le\alpha}\) means that there is no \(\widetilde\varphi\in\mathcal C_{\le\alpha}\) such that

\[
E_\mu[\widetilde\varphi(X)]\ge E_\mu[\varphi(X)]
\qquad\text{for all }\mu\in\Lambda_1,
\]

with strict inequality for at least one \(\mu\in\Lambda_1\).

## Reduction for sufficiency within the class

Suppose \(\varphi\in\mathcal C_\alpha\) and \(\widetilde\varphi\in\mathcal C_{\le\alpha}\) dominates it on \(\Lambda_1\). Define

\[
\Delta(\mu)=E_\mu[\widetilde\varphi(X)]-E_\mu[\varphi(X)].
\]

Because \(\Delta(\mu)\ge0\) for \(\mu\in\Lambda_1\), and \((t,0)\in\Lambda_1\) for all \(t>0\), continuity implies that \(\Delta(0)\ge0\). But \(\varphi\) has exact size and \(\widetilde\varphi\) has level at most \(\alpha\), so \(\Delta(0)\le0\). Hence \(\Delta(0)=0\). Any dominator must also have exact size.

For nonrandomized tests, define gain and loss sets

\[
B=\{x:\widetilde\varphi(x)=1,\varphi(x)=0\},
\]

\[
D=\{x:\widetilde\varphi(x)=0,\varphi(x)=1\}.
\]

Exact size gives

\[
P_0(B)=P_0(D).
\]

Power domination becomes

\[
P_\mu(B)\ge P_\mu(D)
\qquad\text{for all }\mu\in\Lambda_1.
\]

The key unproved lemma would show that, under closed convexity plus class restrictions, this cannot happen unless \(B,D\) are power-equivalent. This is where the geometry must be developed.

## Support-sorting lemma

Let \(A\subseteq\mathbf R^2\) be an acceptance region satisfying:

1. Lower-set property:

\[
x\in A,
\quad y\le x
\quad\Longrightarrow\quad y\in A.
\]

2. Order-respecting acceptance:

\[
x_1\ge x_2,
\quad (x_1,x_2)\in A
\quad\Longrightarrow\quad
(x_2,x_1)\in A.
\]

Define

\[
h_A(a)=\sup_{x\in A}a'x,
\]

and

\[
a^\downarrow=(\max\{a_1,a_2\},\min\{a_1,a_2\}).
\]

Then

\[
h_A(a)<\infty
\quad\Longrightarrow\quad
h_A(a^\downarrow)<\infty.
\]

Moreover, if \(a_2>a_1\), then

\[
h_A(a^\downarrow)\le h_A(a).
\]

Sketch: finite support over a lower set forces \(a_1,a_2\ge0\). If \(a_2>a_1\), set \(b=a^\downarrow=(a_2,a_1)\). For any \(x\in A\), if \(x_1<x_2\), then \(b'x\le a'x\). If \(x_1\ge x_2\), order-respecting acceptance implies \((x_2,x_1)\in A\), and \(b'x=a'(x_2,x_1)\le h_A(a)\). Taking suprema gives the claim.

This lemma is important because it lets us replace an \(X_2\)-heavy support direction by a sorted direction that puts weakly more weight on coordinate 1. The sorted direction is feasible for \(\Lambda=\{\mu_2\le\mu_1\}\) when \(\Sigma=I_2\).

## Connection to Andrews--Soares-style assumptions

Andrews--Soares-type moment-inequality tests use statistics \(S(m,\Omega)\) that are nonincreasing in the inequality moment vector \(m_1\), and reject for large \(S\).

Under the sign change \(m=-x\), this corresponds to coordinatewise monotonicity of the rejection rule:

\[
x\le y
\quad\Longrightarrow\quad
\varphi(x)\le\varphi(y).
\]

So their monotonicity assumption is conceptually related to the first structural condition in \(\mathcal C\). It does not imply the order-respecting priority condition, because that condition compares swapped points \((x_1,x_2)\) and \((x_2,x_1)\), which are not coordinatewise ordered. It also does not imply closed convex acceptance regions.

Do not import Andrews--Soares assumptions wholesale. In particular:

- Do not import positivity if it excludes the short test, which ignores \(X_2\).
- Do not impose homogeneity unless a proof step needs it.
- Do not impose diagonal scale invariance yet; with \(\Sigma=I_2\) it does no work, and \(\mu_2\le\mu_1\) is scale-sensitive.

The useful takeaway is coordinatewise monotonicity, plus the problem-specific priority condition.

## Current proof status and next tasks

Unrestricted theorem:

- A clean proof of the LR-supported sufficiency result is done in `theorem1-lr-proof-updatedV2.tex/pdf`.
- The theorem should be stated as closed convexity implying d-admissibility; plus exact size at finite null point implying alpha-admissibility.
- It is not an iff theorem as written unless additional necessity results are proved with null-set caveats.

Restricted theorem:

- The unrestricted-style Theorem 2 is false because of the \(X_2-X_1\) counterexample.
- The promising route is class-restricted admissibility for monotone, order-respecting tests.
- The class must include both short and long tests and exclude tests that privilege coordinate 2.
- The support-sorting lemma is the main current geometric tool.
- The containment condition \(A\supseteq\Lambda_0\), which appears in Romano--Shaikh-style statements, should be kept in mind for the restricted theorem. It may help align convex acceptance regions with the null cone.

Next concrete tasks:

1. Prove mutual non-domination of the short and long tests directly, using explicit power functions.
2. Prove a result for the ordered rectangular subclass

\[
A_{c_1,c_2}=\{x_1\le c_1,x_2\le c_2\},
\quad
c_1\le c_2,
\quad
\Phi(c_1)\Phi(c_2)=1-\alpha.
\]

3. Identify which steps use rectangularity.
4. Try to extend to closed convex lower-set, order-respecting acceptance regions.
5. Keep necessity separate from sufficiency. The old convexification/separation proof in the notes is not correct as written.

## Files to carry forward

- `admissibility-conversation-compact.md`: this memo.
- `theorem1-lr-proof-updatedV2.tex` and `.pdf`: concise LR-supported proof for the unrestricted result.
- `counter-example-june27.tex` and `.pdf`: counterexample showing original restricted Theorem 2 is false.
- `scratch-idea.tex`: early formalization of the class-restricted theorem idea.
- `i-relevant-notes.tex` and `.pdf`: original notes.
- `Ch6.7.pdf`: LR Section 6.7 excerpt.
