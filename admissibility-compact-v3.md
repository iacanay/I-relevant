# Admissibility project — compact resume memo (v3)

Purpose: let a future session resume the restricted-admissibility project quickly. This memo supersedes `admissibility-compact-v2.md` and `admissibility-conversation-compact.md`. It incorporates the rectangle result, the gated-sum dominator, the Andrews--Soares discussion, and the current feasible-normal characterization.

## Role shorthand

**Yoda** = act as a top-tier statistician/econometrician in the style of Joe Romano: rigorous, proof-oriented, skeptical of unsupported claims, focused on admissibility, testing, convex acceptance regions, and normal experiments. Do not invoke external results without a formal statement and confirmed reference.

## LaTeX/style conventions from the user

Do **not** introduce macros such as

```tex
\newcommand{\R}{\mathbb R}
\newcommand{\E}{\mathbb E}
\newcommand{\Prob}{\mathbb P}
\newcommand{\one}{\mathbf 1}
\newcommand{\phidens}{\varphi}
\newcommand{\phitest}{\phi}
\newcommand{\gammalev}{\gamma}
```

Use the user's notation:

- `\mathbf R` for the reals and Euclidean spaces, for example `\mathbf R^k`.
- `P` for probabilities, for example `P_\mu(\cdot)`.
- `I\{\cdot\}` for indicators.
- Use the original symbols directly, for example `\varphi`, `\phi`, and `\gamma`, rather than alias macros.

## 1. Basic normal testing setup

The baseline experiment is

```tex
X \sim N(\mu,\Sigma),
```

with known positive definite covariance matrix `\Sigma`. A nonrandomized test is written as

```tex
\phi_A(x)=I\{x\notin A\},
```

where `A` is the acceptance region. The size condition is

```tex
\sup_{\mu\in\Lambda_0} E_\mu[\phi_A(X)]\le \alpha.
```

The unrestricted benchmark is

```tex
\Lambda=\mathbf R^k,
\qquad
\Lambda_0=\{\mu:\mu\le0\},
\qquad
\Lambda_1=\mathbf R^k\setminus\Lambda_0.
```

The restricted bivariate experiment, which is the actual project, is

```tex
X\sim N_2(\mu,I_2),
\qquad
\Lambda=\{\mu:\mu_2\le\mu_1\},
```

with

```tex
\Lambda_0=\{\mu\in\Lambda:\mu_1\le0\},
\qquad
\Lambda_1=\{\mu\in\Lambda:\mu_1>0\}.
```

Because `\mu_2\le\mu_1`, the null means both coordinates are nonpositive, and the alternative means the priority coordinate satisfies `\mu_1>0`.

## 2. Unrestricted theorem: settled sufficiency result

For the unrestricted orthant problem, the correct result is a **sufficiency** theorem, not an iff:

```tex
A \text{ closed and convex}
\quad\Longrightarrow\quad
\phi_A \text{ is } d\text{-admissible}.
```

If, in addition, the test has exact size `\alpha` attained at a finite null point, then `\phi_A` is `\alpha`-admissible. Exact size is needed for `\alpha`-admissibility; the zero test has closed convex acceptance region but is not `\alpha`-admissible.

The proof uses the Lehmann--Romano complete-class/ray result for exponential families. In the normal model, set

```tex
\theta=\Sigma^{-1}\mu.
```

Then the normal density is canonical with natural statistic `T(X)=X`. The null natural-parameter set is

```tex
\Omega_H=\{\theta:\Sigma\theta\le0\}.
```

If `A` is contained in a halfspace `{x:a'x\le c}`, level control rules out `\Sigma a\le0`; otherwise, along `\theta_\lambda=\lambda a`, the mean `\lambda\Sigma a` remains in the null and `P_{\theta_\lambda}(a'X>c)\to1`, contradicting level `\alpha<1`. Therefore `\Sigma a\not\le0`, so the ray enters the alternative. This verifies the LR ray condition.

Important: the LR direction `a` is a **natural-parameter direction**. The corresponding mean direction is `\Sigma a`, not `a`, unless `\Sigma=I_k`.

## 3. Why the naive restricted theorem fails

The unrestricted-style statement

```tex
A \text{ closed and convex}
\quad\Longrightarrow\quad
\phi_A \text{ admissible}
```

is false in the restricted problem. The restriction deletes alternatives with `\mu_2>\mu_1`, so a test can waste rejection probability in directions that are not relevant.

Canonical counterexample:

```tex
\phi_\Delta(x)=I\{x_2-x_1>c\}.
```

The acceptance region is a closed convex halfspace, but the statistic points toward the deleted direction `\mu_2-\mu_1>0`. The short test based on `X_1` dominates it on `\Lambda_1`.

This shows that closed convexity alone is insufficient in the restricted experiment.

## 4. Short, long, rectangles, and the original high-level question

The motivating tests are:

Short test:

```tex
\phi_s(x)=I\{x_1>c_s\},
\qquad
c_s=\Phi^{-1}(1-\alpha).
```

Long test:

```tex
\phi_\ell(x)=I\{\max(x_1,x_2)>c_\ell\},
\qquad
c_\ell=\Phi^{-1}(\sqrt{1-\alpha}).
```

Since `\sqrt{1-\alpha}>1-\alpha`, we have `c_\ell>c_s`.

Known comparison:

- The short test wins when `\mu_2\ll\mu_1`: for fixed `\mu_1>0`, send `\mu_2\to-\infty`; then the long test becomes effectively a stricter `X_1` test with cutoff `c_\ell>c_s`.
- The long test wins near the diagonal: along `\mu=(t,t)`, the short miss probability is `\Phi(c_s-t)`, while the long miss probability is `\Phi(c_\ell-t)^2`, which decays faster by Mills' ratio.

Thus the short and long tests are mutually non-dominating in power, but that does **not** imply both are admissible against all tests.

Current high-level answer:

```tex
\boxed{\text{Using }X_2\text{ is not the problem. The problem is using it through infeasible directions.}}
```

The long test uses `X_2` too symmetrically; it has a vertical face with normal `(0,1)`, which points in an infeasible direction. A better `X_2`-using test is the gated-sum test, which uses `X_2` only through the feasible diagonal signal.

## 5. Ordered rectangles: exact class-relative result

For cutoffs `c=(c_1,c_2)` in the extended reals, define

```tex
A_c=\{x_1\le c_1,\ x_2\le c_2\},
\qquad
\phi_c(x)=I\{x_1>c_1\text{ or }x_2>c_2\}.
```

Size is determined by

```tex
P_0(A_c)=\Phi(c_1)\Phi(c_2).
```

The test has level at most `\alpha` iff

```tex
\Phi(c_1)\Phi(c_2)\ge \gamma,
\qquad
\gamma=1-\alpha.
```

An ordered rectangle satisfies

```tex
c_1\le c_2.
```

This is the rectangular version of priority for coordinate 1.

**Theorem: ordered rectangular admissibility.** Every exact-size ordered rectangle

```tex
c_1\le c_2,
\qquad
\Phi(c_1)\Phi(c_2)=1-\alpha
```

is admissible relative to **all rectangular** level-`\alpha` competitors, not merely ordered competitors.

Equivalently, among rectangular tests the admissible exact-size frontier is exactly the ordered frontier:

```tex
\phi_c\text{ is admissible among level-}\alpha\text{ rectangles}
\quad\Longleftrightarrow\quad
\Phi(c_1)\Phi(c_2)=1-\alpha
\text{ and }
 c_1\le c_2.
```

The proof uses three ideas:

1. A dominating rectangle must have exact size; otherwise it has too much acceptance probability near the least favorable null.
2. Sending `\mu_2\to-\infty` exposes the `X_1` cutoff and forces `d_1\le c_1`.
3. If `d_1<c_1`, exact size forces `d_2>c_2`; on the diagonal `\mu=(t,t)`, Mills' ratio shows the competitor has larger miss probability for large `t`, contradicting domination.

Important correction: the competitor need not be ordered. Domination and exact size force the relevant strict case into the ordered region.

## 6. Finite rectangles are dominated outside the rectangular class

Although finite ordered rectangles are admissible among rectangles, they are not globally admissible once nonrectangular tests are allowed.

For an exact-size finite ordered rectangle

```tex
A_c=\{x_1\le c_1,\ x_2\le c_2\},
\qquad
c_1\le c_2<\infty,
\qquad
P_0(A_c)=1-\alpha,
```

construct the gated-sum acceptance region

```tex
A_{c_1,b}=\{x_1\le c_1,
             \ x_1+x_2\le b\},
```

where `b` is chosen so that

```tex
P_0(A_{c_1,b})=P_0(A_c)=1-\alpha.
```

Then the test with acceptance region `A_{c_1,b}` strictly dominates the rectangle on every `\mu\in\Lambda_1`.

For the long test, this says that

```tex
I\{x_1>c_\ell\text{ or }x_2>c_\ell\}
```

is dominated by

```tex
I\{x_1>c_\ell\text{ or }x_1+x_2>b\}.
```

Conceptually, the gated test keeps the `X_1` gate and replaces the bad vertical `X_2` face by a feasible diagonal face.

## 7. Gated-sum family and critical-value calibration

The gated-sum family is

```tex
A_{c,b}=\{x_1\le c,
          \ x_1+x_2\le b\},
\qquad
\phi_{c,b}(x)=I\{x_1>c\text{ or }x_1+x_2>b\}.
```

Exact size requires

```tex
P_0(X_1\le c,
    \ X_1+X_2\le b)=1-\alpha.
```

Equivalently,

```tex
\int_{-\infty}^{c}\Phi(b-x)\varphi(x)\,dx=1-\alpha.
```

Let `\gamma=1-\alpha` and `c_s=\Phi^{-1}(\gamma)`. Exact-size calibration is not unique: it is a one-dimensional family.

- Fixing `c` first: there is a unique finite `b=b(c)` iff `c>c_s`. At the endpoint `c=c_s`, the solution is `b=\infty`, giving the short test.
- As `c\to\infty`, the gate disappears and

```tex
b(c)\to \sqrt2\,c_s,
```

which gives the pure diagonal-sum test

```tex
I\{X_1+X_2>\sqrt2\,c_s\}.
```

- The function `b(c)` is strictly decreasing: relaxing the `X_1` gate requires tightening the diagonal cutoff.
- Fixing `b` first: there is a unique finite `c=c(b)` iff `b>\sqrt2\,c_s`. At `b=\sqrt2\,c_s`, the solution is `c=\infty`.
- If the gated test is introduced as the dominator of a given rectangle, we fix `c=c_1`, and then `b` is unique.

## 8. Feasible normal cone and the main v3 characterization

For the restricted bivariate identity-covariance problem, define the feasible normal cone

```tex
\mathcal F
=
\{a\in\mathbf R^2:0\le a_2\le a_1\}
=
\operatorname{cone}\{(1,0),(1,1)\}.
```

For a closed convex set `A`, let

```tex
h_A(a)=\sup_{x\in A}a'x
```

allowing `+\infty`. The phrase "all finite normals lie in `\mathcal F`" means

```tex
 a\ne0,
 \quad h_A(a)<\infty
 \quad\Longrightarrow\quad
 a\in\mathcal F.
```

For a coordinatewise lower set, finite support already forces `a\ge0`, so failure means there is some finite-support direction with

```tex
0\le a_1<a_2.
```

**Main v3 theorem: feasible-normal characterization.** Let `A\subseteq\mathbf R^2` be closed, convex, and coordinatewise lower, and suppose

```tex
P_0(X\in A)=1-\alpha,
\qquad 0<\alpha<1.
```

Then

```tex
\phi_A(x)=I\{x\notin A\}
```

is `\alpha`-admissible against all level-`\alpha` tests iff all finite normals of `A` lie in `\mathcal F`.

Scope:

- This theorem is for the bivariate identity-covariance experiment.
- The maintained test is nonrandomized with closed convex coordinatewise lower acceptance region.
- The sufficiency direction uses Lehmann--Romano and therefore allows arbitrary randomized level-`\alpha` competitors.
- The necessity direction constructs an explicit nonrandomized level-`\alpha` dominator.

Consequences:

- The short test is globally admissible: its only finite normal is `(1,0)`.
- Every exact-size gated-sum test is globally admissible: its normals are `(1,0)` and `(1,1)`.
- The long test is globally inadmissible: its rectangle has a bad finite normal `(0,1)`.
- Any finite rectangle with a vertical face is globally inadmissible, despite being admissible among rectangles.
- The old class "coordinatewise monotone + order-respecting priority" is too broad: it contains the long test and its gated dominator.

## 9. Transfer order and the necessity proof architecture

The necessity direction is based on a partial order under which every restricted-alternative likelihood ratio is increasing.

Define

```tex
T_1(x)=x_1+x_2,
\qquad
T_2(x)=-x_2.
```

Write

```tex
x\succeq_\Lambda y
\quad\Longleftrightarrow\quad
T_1(x)\ge T_1(y)
\text{ and }
T_2(x)\ge T_2(y).
```

The positive cone of this order is

```tex
P=\{d:x+d\succeq_\Lambda x\}
=\operatorname{cone}\{(1,0),(1,-1)\}
=\{d:d_2\le0,\ d_1+d_2\ge0\}.
```

Intuition: `P` is the cone of sample-space moves that do not increase `x_2` and do not decrease the total `x_1+x_2`. Equivalently, a move in `P` either increases priority-coordinate evidence or reallocates a fixed total signal from the lower-priority coordinate to the higher-priority coordinate.

For `\mu\in\Lambda_1`, write

```tex
u=\mu_1>0,
\qquad
v=\mu_1-\mu_2\ge0,
\qquad
\mu=(u,u-v).
```

Then the likelihood ratio relative to `P_0` is

```tex
L_\mu(x)
=
\exp\{u(x_1+x_2)+v(-x_2)-\tfrac12(\mu_1^2+\mu_2^2)\}.
```

Thus `L_\mu` is strictly increasing in `T_1=x_1+x_2` and weakly increasing in `T_2=-x_2`.

### Transfer domination criterion

If two Borel sets `B` and `D` have equal null probability and every gained rejection point `g\in B` satisfies

```tex
T_1(g)>T_1(d),
\qquad
T_2(g)\ge T_2(d)
```

for every lost rejection point `d\in D`, then

```tex
P_\mu(B)>P_\mu(D)
\qquad\text{for every }\mu\in\Lambda_1.
```

This is the formal version of "move rejection mass upward in the restricted likelihood-ratio order."

### Constructive necessity proof

If `A` has a bad finite normal with `a_2>a_1`, define the feasible-normal hull

```tex
\widehat A=\operatorname{cl}(A-P).
```

Then calibrate a competitor by cutting this hull with a diagonal halfspace:

```tex
A'=\widehat A\cap\{x_1+x_2\le b\},
```

where `b` is chosen so that `P_0(A')=P_0(A)=1-\alpha`.

The slicewise proof uses

```tex
\beta(s)=\sup\{x_1:(x_1,s)\in A\},
\qquad
m(s)=\beta(s)+s,
\qquad
M(s)=\sup_{r\le s}m(r).
```

The key slice formula is

```tex
(x_1,s)\in\widehat A
\quad\Longleftrightarrow\quad
x_1+s\le M(s).
```

Let

```tex
G=A\setminus A'=A\cap\{x_1+x_2>b\}
```

be the newly rejected mass, and

```tex
D=A'\setminus A
```

be the newly accepted mass. Exact size gives `P_0(G)=P_0(D)>0`. The extended-real concavity of `m` gives a separation point

```tex
s_+=\sup\{s:m(s)>b\}
```

such that gain slices lie below `s_+` and loss slices lie above `s_+`. Hence every gain point has larger `T_1` and weakly larger `T_2` than every loss point. The transfer criterion then gives strict domination on all of `\Lambda_1`.

## 10. How this changes the interpretation of "using `X_2`"

The answer to the user's fundamental question is now sharp:

```tex
\boxed{
\text{Using }X_2\text{ is good when it enters through feasible normals;}
\text{ it is bad when it creates }X_2\text{-heavy faces.}
}
```

Examples:

| Test | Uses `X_2`? | Finite normals | Status |
|---|---:|---|---|
| Short `I\{X_1>c_s\}` | No | `(1,0)` | Globally admissible |
| Gated sum `I\{X_1>c\text{ or }X_1+X_2>b\}` | Yes | `(1,0)`, `(1,1)` | Globally admissible |
| Pure diagonal sum `I\{X_1+X_2>b\}` | Yes | `(1,1)` | Globally admissible |
| Long `I\{\max(X_1,X_2)>c_\ell\}` | Yes | `(1,0)`, `(0,1)` | Globally inadmissible |
| Finite ordered rectangle | Yes | `(1,0)`, `(0,1)` | Admissible among rectangles; globally inadmissible |
| `X_2`-only `I\{X_2>q\}` | Yes | `(0,1)` | Globally inadmissible |
| Difference test `I\{X_2-X_1>q\}` | Yes | bad oblique direction | Globally inadmissible / not monotone |

## 11. Andrews--Soares connection

The attached Andrews--Soares pages define test statistics

```tex
T_n(\theta)=S\{n^{1/2}m_n(\theta),\widehat\Sigma_n(\theta)\}.
```

Assumption 1 says, roughly:

- `S` is nonincreasing in the inequality moment vector;
- `S` is invariant to positive diagonal rescaling;
- `S\ge0`;
- `S` is continuous.

Under the sign convention

```tex
x_j=-m_j/\sigma_j,
```

larger `x_j` means stronger violation of inequality `j`. Assumption 1(a) becomes coordinatewise monotonicity of the rejection rule in `x`. It does **not** imply rectangularity, convexity, or priority ordering.

### AS does not imply rectangles

The AS assumptions do not force rectangular acceptance regions. Counterexamples are already among their examples.

MMM statistic `S_1` for two inequalities and `\Sigma=I_2`:

```tex
S_1(m,I_2)=\sum_{j=1}^2 [m_j]^2_-.
```

In `x=-m` coordinates, rejection is based on

```tex
(x_1^+)^2+(x_2^+)^2.
```

So the acceptance region is

```tex
A_{\mathrm{MMM}}(q)
=
\{x:(x_1^+)^2+(x_2^+)^2\le q\},
```

which is rounded, not rectangular. It is closed, convex, and lower, but its circular arc has normals proportional to `(x_1^+,x_2^+)`; wherever `x_2>x_1>0`, the normal lies outside `\mathcal F`. Therefore, by the feasible-normal characterization, the MMM test is globally inadmissible in the restricted priority problem.

QLR statistic `S_2`:

For two inequalities and `\Sigma=I_2`, QLR coincides with MMM after the sign convention, because it is the squared distance to the nonnegative orthant in moment space. Hence in this simple case it has the same acceptance region and the same inadmissibility conclusion.

For nonidentity covariance, QLR is harder: the geometry is determined by the covariance-weighted projection onto the moment cone. It should be studied separately after the identity-covariance theory is stable.

Max / largest-violation statistic:

The max statistic leads to the long test in the simple symmetric two-coordinate case, hence is globally inadmissible under the restricted priority problem because of its vertical face `(0,1)`.

### Gated statistic and AS assumptions

The gated statistic can be written in standardized moment coordinates as

```tex
S_{\mathrm{gate},\lambda}(m,\Sigma)
=
\max\left\{
\left[-\frac{m_1}{\sigma_1}\right]_+,
\lambda\left[-\frac{m_1}{\sigma_1}-\frac{m_2}{\sigma_2}\right]_+
\right\},
\qquad \lambda>0.
```

With `z_j=-m_j/\sigma_j`, this rejects when

```tex
z_1>\kappa
\quad\text{or}\quad
z_1+z_2>\kappa/\lambda.
```

So it generates the gated-sum test in the limit experiment. It satisfies AS Assumption 1(a)--(d) for fixed `\lambda`: monotonicity, scale invariance, nonnegativity, and continuity.

Caveat: it may fail the AS positivity condition/Assumption 3 for the unrestricted moment-inequality alternative, because an isolated `X_2` violation need not make the gated statistic positive. That is intentional in the priority-restricted model; it treats `X_2`-only evidence as insufficient unless supported by `X_1` or the diagonal sum.

## 12. Current theorem list for the notes

### Theorem 1: unrestricted closed-convex sufficiency

In the unrestricted normal orthant problem, a nonrandomized test with closed convex acceptance region is `d`-admissible. If it has exact size attained at a finite null point, it is `\alpha`-admissible. Competitors may be randomized, by the LR corollary.

### Theorem 2: short test global admissibility

In the restricted bivariate identity-covariance problem, the exact-size short test

```tex
I\{X_1>\Phi^{-1}(1-\alpha)\}
```

is `\alpha`-admissible against all level-`\alpha` tests.

### Theorem 3: ordered rectangles are admissible among rectangles

Every exact-size ordered rectangle

```tex
A_c=\{x_1\le c_1,
       \ x_2\le c_2\},
\qquad
c_1\le c_2,
\qquad
\Phi(c_1)\Phi(c_2)=1-\alpha,
```

is admissible relative to all rectangular level-`\alpha` competitors.

### Theorem 4: finite rectangles are dominated by gated tests

Every finite exact-size ordered rectangle is strictly dominated, outside the rectangular class, by a calibrated gated-sum test.

### Theorem 5: feasible-normal characterization

In the restricted bivariate identity-covariance problem, among exact-size closed convex coordinatewise lower acceptance regions,

```tex
\phi_A\text{ is globally }\alpha\text{-admissible}
\quad\Longleftrightarrow\quad
h_A(a)<\infty,
\ a\ne0
\Rightarrow
0\le a_2\le a_1.
```

This is the current strongest statement. It turns the previous conjecture into a theorem in the bivariate identity-covariance setting.

### Proposition: transfer criterion

Equal-null-probability transfers that move rejection mass upward in the order generated by `(T_1,T_2)=(x_1+x_2,-x_2)` strictly improve power at every restricted alternative.

### Proposition: Andrews--Soares implications

AS Assumption 1 implies coordinatewise monotonicity after the sign change `x=-m/\sigma`, but it does not imply rectangles or feasible-normal geometry. In the simple `k=2,\Sigma=I_2` case, MMM and QLR fail the feasible-normal condition and are therefore inadmissible for the restricted priority problem.

## 13. Extension notes

### `k>2`

For the ordered cone

```tex
\mu_k\le\mu_{k-1}\le\cdots\le\mu_1,
```

the plausible feasible nonnegative normal cone is

```tex
\{a:a_1\ge a_2\ge\cdots\ge a_k\ge0\},
```

generated by prefix-sum normals

```tex
(1,0,\ldots,0),
(1,1,0,\ldots,0),
\ldots,
(1,\ldots,1).
```

Gated tests should generalize to acceptance regions bounded by prefix sums:

```tex
x_1\le c_1,
\quad
x_1+x_2\le c_2,
\quad
\ldots,
\quad
x_1+\cdots+x_k\le c_k.
```

This is not yet proved. Need to generalize both the LR sufficiency and the transfer-hull necessity construction.

### `\Sigma\ne I_2`

Do **not** naively whiten and assume the same coordinate geometry survives. Whitening generally destroys coordinatewise order, priority, and rectangularity.

For LR sufficiency, a support/natural-parameter direction `a` moves the mean along `\Sigma a`. Feasibility should therefore be expressed through the condition that the ray

```tex
\mu_0+\lambda\Sigma a
```

can enter/stay in the restricted alternative. In the bivariate model, the analogue of `a_2\le a_1` must be written in terms of `\Sigma a`.

For necessity and transfer, the likelihood ratio order changes with `\Sigma^{-1}\mu`. The correct transfer statistics are the coordinates of the dual cone in natural-parameter space. This needs fresh work.

## 14. Action plan

1. **Integrate Theorem 5 into `i-relevant-notes.tex`.** Use the cleaned proof from `necessity-feasible-normal-clean.tex` as the current best version.
2. **Keep the rectangle theorem**, but label it clearly as rectangular-class admissibility. It is still useful because it explains what is true if the design class is restricted to rectangles.
3. **Promote the gated-sum family** as the main positive answer to "should one use `X_2`?" The answer is yes: use it through feasible diagonal/prefix-sum directions.
4. **Add an AS subsection**: Assumption 1 gives monotonicity but not rectangularity; MMM and QLR are not protected by the restricted-priority geometry in the simple identity-covariance case.
5. **Produce figures** comparing acceptance regions and normals: short, long, finite rectangle, gated sum, MMM/QLR rounded acceptance region.
6. **Check edge cases in Theorem 5** one more time before treating it as publication-ready: extended-real slices, null boundary sets, and cases like `X_2`-only halfspaces.
7. **Then move to `k>2`**, where prefix-sum normals should replace `(1,0)` and `(1,1)`.
8. **Only after that move to `\Sigma\ne I`**, expressing feasibility through the natural-to-mean map `a\mapsto\Sigma a`.

## 15. Files to carry forward

Core uploaded/user files:

- `i-relevant-notes.tex`: current main notes file.
- `admissibility-conversation-compact(4).md`: old v1 compact memo.
- `admissibility-compact-v2.md`: old v2 compact memo.
- `AS-summary.pdf`: attached Andrews--Soares pages with `S_1`, `S_2`, `S_3`, Assumption 1, Assumption 3, and Assumption 6.

Files produced in this session:

- `Theorem2-rectangle.tex` and `Theorem2-rectangle.pdf`: rectangle theorem draft.
- `revised/Theorem2-rectangle.tex` and `.pdf`: revised shorter rectangle theorem. Note: this file may still contain older macro choices; remove macros if integrating.
- `assessment-beyond-rectangles.tex` and `.pdf`: counterexample showing monotone/order-respecting class is too broad and finite rectangles are dominated by gated tests.
- `admissibility-map-plan.tex` and `.pdf`: two-page planning map.
- `feasible-normal-transfer.tex` and `.pdf`: feasible-normal sufficiency, candidates, AS tests, and transfer criterion.
- `necessity-feasible-normal.tex`: initial necessity attempt.
- `necessity-feasible-normal-clean.tex` and `.pdf`: current best cleaned theorem-proof for feasible-normal iff.
- `admissibility-compact-v3.md`: this memo.

## 16. One-sentence current state

In the restricted bivariate identity-covariance experiment, the admissible way to use `X_2` is through feasible normals: exact-size closed convex lower tests are globally admissible exactly when every finite support direction satisfies `0\le a_2\le a_1`; hence the short test and gated-sum tests are globally admissible, while the long test, finite rectangles, MMM, and QLR fail because they put some rejection boundary in an `X_2`-heavy direction.
