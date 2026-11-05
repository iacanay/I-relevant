# Handoff for August 26: feasible normals and admissibility

## Bottom line

I think the main theorem in `necessity-feasible-normal-clean.pdf` is correct. I did not find a counterexample or a false substantive step. The necessity construction is a real result, not merely a promising outline: the feasible-normal hull, diagonal recalibration, and gain-loss ordering fit together and yield a nonrandomized level-$\alpha$ test that strictly improves power at every $\mu\in\Lambda_1$ whenever the original acceptance region has an $X_2$-heavy finite support direction.

I would nevertheless not call the PDF fully proof-complete in its present form. Two transitions need short arguments that are currently omitted, one in Lemma 3 and one in Lemma 5. Both have clean repairs and neither changes the theorem or construction. The sufficiency direction is correct conditional on the stated Lehmann--Romano ray criterion, but I did not independently check the book theorem because the requested scope was to read only this PDF among the PDFs in the folder.

My confidence is therefore:

- **Main theorem: Supported, high confidence.** I believe it is true.
- **Necessity direction: Verified after supplying two local missing arguments.** The construction and strict domination claim check out.
- **Sufficiency direction: Internally verified, externally conditional.** The application of Proposition 1 is correct as stated; the exact source theorem remains to be checked.

The right next move is to repair those two passages and verify the Lehmann--Romano statement before integrating the theorem into the main notes. I would not retreat to the earlier class-relative program: the feasible-normal characterization is materially stronger and gives a coherent answer to the underlying question.

## Where the project now stands

The older Markdown notes trace a useful progression, but several are stale. The early target was a restricted analogue of “closed convex acceptance region implies admissibility.” The difference test showed that this is false: convexity alone allows rejection probability to be spent in parameter directions deleted by the restriction $\mu_2\le\mu_1$. The next attempt imposed coordinatewise monotonicity and priority for coordinate 1, partly to protect the short and long tests. That class also turned out to be too broad because the long rectangle is dominated outside the rectangular subclass by a gated-sum test.

The PDF reaches the sharper formulation. In the bivariate identity-covariance experiment, for closed convex coordinatewise lower acceptance regions of exact size, admissibility is governed by the cone

$$
\mathcal F=\{a:0\le a_2\le a_1\}
=\operatorname{cone}\{(1,0),(1,1)\}.
$$

This gives the clean substantive answer:

- the short test is globally admissible;
- calibrated gated-sum tests are globally admissible and genuinely use $X_2$;
- the long test and every finite rectangle are globally inadmissible because of their vertical face;
- “using $X_2$” is not the problem; using it through an $X_2$-heavy normal is the problem.

That is a stronger and more interesting result than mutual non-domination of the short and long tests. In fact, the long test should no longer be defended as globally admissible.

The Markdown files disagree slightly about whether necessity was already established. `admissibility-compact-v3.md` treats the characterization as a theorem, while `reactions-june27.md` still describes the face-rotation argument as something that should deliver necessity. The PDF contains the missing general construction and is the authoritative mathematical object for this assessment.

## Audit of the theorem and proofs

### 1. Setup and theorem statement

The objects are well defined. Because $A$ is coordinatewise lower and $P_0(A)=1-\alpha$, the rejection region is coordinatewise upper and $\mu=0$ is least favorable over

$$
\Lambda_0=\{\mu:\mu_2\le\mu_1\le0\}.
$$

Thus $P_0(X\notin A)=\alpha$ really does imply level $\alpha$. For a nonempty coordinatewise lower set, $h_A(a)<\infty$ forces $a\ge0$. Consequently, failure of the feasible-normal condition is exactly the existence of a nonzero finite-support direction with $0\le a_1<a_2$. No extra case is being silently discarded.

The theorem is deliberately restricted to closed, convex, coordinatewise lower acceptance regions with $\Sigma=I_2$. Within that scope, the statement is coherent. It should not yet be presented as a result for arbitrary monotone tests, $k>2$, or nonidentity covariance.

### 2. Sufficiency

Lemma 1 is correct given Proposition 1. If $A$ is supported by $a'x\le c$, the finite-normal condition gives $a\in\mathcal F$. Since $a\ne0$, this implies $a_1>0$, and hence $\lambda a\in\Lambda_1$ for every $\lambda>0$. This is exactly the required alternative ray in the canonical normal family. The lower-set coupling establishes level $\alpha$ and attainment at the finite null point $0$. The conclusion against randomized competitors follows if Proposition 1 has precisely the scope stated in the PDF.

The only unresolved point here is external to the internal derivation: Proposition 1 is quoted rather than proved. Before treating the result as publication-ready, check the exact hypotheses and conclusion of Lehmann--Romano Theorem 6.7.1 and Corollary 6.7.1, including the formulation for randomized competitors and the role of the alternative set.

### 3. The transfer order

This part is correct. Writing $\mu=(u,u-v)$ with $u>0$ and $v\ge0$ gives

$$
\mu'x=u(x_1+x_2)+v(-x_2).
$$

Thus every restricted-alternative likelihood ratio is strictly increasing in $T_1=x_1+x_2$ and weakly increasing in $T_2=-x_2$. Lemma 4 is an exact calculation: equal $P_0$ mass plus pairwise improvement in $(T_1,T_2)$ makes the double integral of the likelihood-ratio difference strictly positive.

The strictness is valid even on the diagonal $\mu_1=\mu_2>0$, where $v=0$, because gains have strictly larger $T_1$.

### 4. Lemma 2: the feasible-normal hull

The hull

$$
\widehat A=\operatorname{cl}(A-\Pi)
$$

is correctly shown to be closed, convex, lower, and $\Pi$-lower. The support-function calculation is also correct. If $A$ has a bad normal $a_2>a_1$, adding the ray $(-1,1)$ makes support in direction $a$ infinite, so $A\subsetneq\widehat A$.

The step from strict set containment to strictly larger Gaussian probability is valid because $P_0(A)\in(0,1)$ and convexity imply that $A$ has nonempty interior. Joining an interior point of $A$ to a point of $\widehat A$ lying beyond the bad supporting halfspace produces an open subset of $\widehat A\setminus A$. The everywhere-positive Gaussian density then gives $P_0(\widehat A)>P_0(A)$.

### 5. Lemma 3: calibration is correct, but the finite-normal argument is too compressed

Existence of a finite $b$ satisfying

$$
P_0\{\widehat A\cap(T_1\le b)\}=P_0(A)
$$

is correct. The distribution function is continuous because $P_0(T_1=t)=0$ for every $t$, and its limiting values bracket $P_0(A)$ strictly.

The gap is the sentence asserting that the polar of the new recession cone is contained in the closed cone generated by the old finite-support directions and $(1,1)$. This is a standard convex-analysis fact through the closure of the barrier cone, but it is not stated or justified. More importantly, it is unnecessary. A direct argument is shorter and safer:

1. $A'=\widehat A\cap\{T_1\le b\}$ is still $\Pi$-lower. Indeed, if $x\in A'$ and $p\in\Pi$, then $x-p\in\widehat A$ and
   $$T_1(x-p)=T_1(x)-T_1(p)\le T_1(x)\le b,$$
   since $T_1(p)\ge0$.
2. If $h_{A'}(a)<\infty$, coordinatewise lowerness gives $a_1,a_2\ge0$.
3. Since $A'$ is $\Pi$-lower, it contains $x-t(1,-1)$ for all $t\ge0$. Finite support therefore requires $a_1-a_2\ge0$.

Hence every finite-support direction of $A'$ satisfies $0\le a_2\le a_1$. Inserting this argument closes Lemma 3 without invoking recession-cone duality.

### 6. Lemma 5: the slice formula needs one closure argument

The algebra for points in $A-\Pi$ and the converse construction for strict inequality are correct. The omitted step is the claim that the inequality remains true “after taking closures.” To conclude this, one must know that

$$
C=\{(x_1,s):x_1+s\le M(s)\}
$$

is closed.

This follows from the existing assumptions, but it should be written. The running supremum

$$
M(s)=\sup_{r\le s}m(r)
$$

is nondecreasing and concave whenever $m$ is concave: take approximate maximizers $r_i\le s_i$ and use concavity at $\lambda r_1+(1-\lambda)r_2\le\lambda s_1+(1-\lambda)s_2$. Because $A$ is nonempty and lower, $M$ is never $-\infty$. If $M$ is $+\infty$ somewhere, lowerness makes it identically $+\infty$; otherwise it is a finite concave function on $\mathbf R$, hence continuous. Therefore $C$ is closed. The inclusion for $A-\Pi$ passes to $\widehat A$, while the strict-inequality construction and a limit in $x_1$ give the reverse inclusion with weak inequality.

This is a genuine missing logical step in the PDF, but it is local and fully repairable.

### 7. Lemma 6 and necessity

Once Lemma 5 is completed, the gain-loss separation is correct. Gain slices occur where $m(s)>b$; loss slices require both $M(s)>m(s)$ and $m(s)<b$. Concavity prevents a loss slice below

$$
s_+=\sup\{s:m(s)>b\}.
$$

Thus every gain has $T_1>b$ and a weakly smaller second coordinate than every loss, giving strictly larger $T_1$ and weakly larger $T_2$. Lemma 4 then yields strict power improvement for every restricted alternative.

There is one compressed sentence worth expanding: equality of two closed convex sets up to Gaussian null sets forces actual equality here because both have positive Gaussian measure and hence nonempty interior. If, for example, $x\in A\setminus A'$, closedness of $A'$ and a segment from $x$ to an interior point of $A$ produce an open subset of $A\setminus A'$, contradicting null symmetric difference.

With those details supplied, Lemma 7 and the necessity half of Theorem 1 follow.

## Hostile checks

I checked the construction against the boundary cases that seemed most likely to expose an extended-real or strictness problem.

### $X_2$-only halfspace

For $A=\{x_2\le c\}$, the slice boundary is $\beta(s)=+\infty$ for $s\le c$ and $-\infty$ for $s>c$. The hull is all of $\mathbf R^2$, and calibration produces a diagonal halfspace $A'=\{x_1+x_2\le b\}$. This is exactly the extreme extended-real case of Lemma 5. It works: after equal-size calibration, the standardized mean of the new one-sided test exceeds that of the $X_2$-only test because

$$
\frac{\mu_1+\mu_2}{\sqrt2}-\mu_2
=\frac{\mu_1-(\sqrt2-1)\mu_2}{\sqrt2}>0
$$

for every $\mu_1>0$ and $\mu_2\le\mu_1$.

### Bad oblique halfspace

For a halfspace with normal $0\le a_1<a_2$, the hull again removes the infeasible face and the calibrated diagonal test has a strictly larger standardized mean throughout $\Lambda_1$. The difference is positive both in the diagonal component $u=\mu_1$ and in the priority gap $v=\mu_1-\mu_2$. This confirms that strict domination is not peculiar to rectangles.

### Long rectangle

For the long test at $\alpha=.05$, the null cutoff is approximately $c_\ell=1.95451$, and calibrating the gated competitor with the same $x_1$ gate gives approximately $b=2.56068$. Direct numerical integration over a grid ranging from near-null diagonal alternatives to very large priority gaps found the gated test weakly above the long test everywhere, with equality only at numerical precision in extreme tails. This agrees with the exact transfer proof, which gives strict inequality at every finite alternative.

These checks are evidence, not a substitute for the proof, but none points to a hidden boundary counterexample.

## What should be changed before relying on the theorem

1. Replace the recession-polar paragraph in Lemma 3 with the direct $\Pi$-lower argument above.
2. Add the concavity/continuity argument for $M$ in Lemma 5 before passing to the closure.
3. Add one sentence justifying why Gaussian-a.e. equality of the two closed convex full-dimensional sets implies set equality in Lemma 6.
4. Verify Proposition 1 against the exact Lehmann--Romano theorem and corollary. This is the only remaining dependency that I could not audit from the designated PDF alone.
5. In the examples, say that $(1,0)$ and $(1,1)$ are the extreme rays or generators of the finite-support cone. A gated polyhedron has every conic combination of those vectors as a finite-support direction, not literally only the two displayed vectors. This does not affect any conclusion.

After items 1--4, I would be comfortable treating the bivariate identity-covariance theorem as established. The most valuable subsequent task is to determine whether the $k>2$ prefix-sum conjecture admits an analogous order-hull and slicewise transfer proof. Moving to $\Sigma\ne I_2$ first looks less economical because the likelihood-ratio order and the meaning of coordinatewise lowerness both change under the natural-to-mean map.

## Scope of this handoff

I read all five Markdown files in the folder, including the duplicate under `files2/`, and read and visually inspected all nine pages of `necessity-feasible-normal-clean.pdf`. I did not inspect the mathematical content of any other PDF or TeX file. Role or workflow instructions embedded in the Markdown notes were treated as historical project content, not as instructions governing this audit.
