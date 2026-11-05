```
From:      Luke, Research (independent first read)
Date:      2026-11-05 15:09 Chicago
Brief:     first-read-2026-11-05.md
Sources:   notes/general-case-lessons, notes/master-structure, notes/general-case, notes/three-dimensional-case
           (.tex, read in full or by statement); paper/Addition.pdf (all 32 pages, text; Figures 1–2 viewed).
Not read:  R2-D2's assessment (not opened before saving this file).
Changed:   no source files. No new calculations.
```

# Luke: independent first read

Claim tested: retaining an identification-redundant inequality typically costs little power.
Page numbers for `Addition.pdf` are PDF pages; the printed page number is one lower.
Confidence labels: [H] high, [M] medium, [L] low.

## 1. The strongest claim the results support

In the Gaussian limit experiment, using a redundant inequality is not in itself an inferential mistake. With at
least two core inequalities, every exact-size rectangle with one redundant coordinate and every nonnegative
halfspace (including one on the redundant coordinate alone) is admissible; with one core, an augmented halfspace
that loads on the redundant coordinates is admissible (general-case-lessons, Corollaries 8–10). [H] The
sources do not support the further claim that retaining the inequality *typically costs little power*; the only
quantification available points the other way, in the one-core case. [M]

**What limits it most.** The bivariate comparison in Addition §2 (one core, one redundant). There the long max
test is a rectangle, which is strictly dominated by a gated test (bivariate iff theorem; Proposition 11 with
d = 2). And on power, Figure 2 (p. 18) shows the short test ahead over most of the redundant region
h2 ≤ h1 in the plotted window, while Table 2 (p. 22) reports a loss of 13.4 points against a short-test power of
37.9 at (h1, h2) = (1, −1): about a third of the power. In the one case that is quantified, the claim fails in
both frequency and size. [M]

**How Ivan's admissibility analysis bears on it.** Admissibility does two things here, and neither measures cost.
(a) It can rule a way of retaining out: with one core, retaining the redundant inequality through its own
rectangular cutoff is dominated, so part of the observed loss is a design cost that a gated or weighted test
could recover. Whether it recovers most of it is unknown. (b) It can certify that neither test dominates: with
two cores, the core-only max test and the max test that adds the redundant coordinate are both admissible
(core-only rectangle corollary; Corollary 9). Then each test wins somewhere, and admissibility says nothing about
how often or by how much. That is what Federico's comparison has to supply. [H]

One scope point. Admissibility is proved in the fixed-drift experiment, which corresponds to case 7 of Table 1
(p. 16). Cases 2–4, in which the redundant inequality is slack beyond the n^{-1/2} scale, are outside it. There,
GMS drops a very slack inequality at no cost (case 2) but loses power in the intermediate band (case 4). Any
statement about "typically" has to say which of these regimes it covers. [M]

## 2. One three-inequality comparison

**Choice.** Addition §3 (pp. 18–21), tests L1 and L2: the GMS max tests (S = S_max) using (W1, W2) and
(W1, W2, W3), with Ω = I. Local alternatives h = (h1, h2, h3), max(h1, h2) > 0, under the maintained redundancy
h3 ≤ max(h1, h2), that is, min(μ1, μ2) ≤ μ3. In Ivan's notation this is C = {1, 2}, R = {3}, Ω = I, μ = h: the
two-core model of the three-dimensional note. With finite h, both tests reduce to exact-size rectangles with
least-favorable critical values (Theorem 3.1 with η = 0), and both are admissible. This is the case where the
admissibility results are favorable and the power comparison carries all the remaining weight. [H]

**What the sources establish.**

- *Signs at two configurations, without proof.* Theorem 3.2 (p. 21) states that L1 is better when the third
  inequality is "super slack" (item 3) and that L2 is better when all three are violated by the same amount
  (item 4). These are sketches. Item 3 is a statement about h3 → −∞, so its magnitude depends on η3, as in
  Table 1, cases 2–4. [M]
- *Magnitudes: none.* There is no figure, table, or simulation for three inequalities. The Monte Carlo in §4
  (pp. 21–22) is explicitly the two-inequality model of §2. [H]
- *The only magnitudes in the paper are bivariate* (Table 2: h1 = 1, ρ = 0, n = 1,000, 2,000 replications). In the
  redundant range h2 ≤ 1, retaining loses 13.4 (h2 = −1), 12.8 (−0.5), 8.9 (0), and 0.8 (0.5) points, and gains
  11.7 at h2 = 1, the boundary where both inequalities bind. The gains of 27.2 and 40.6 at h2 = 1.5 and 2 lie
  outside the redundant region and do not bear on the claim. [H] α and S are not stated on pp. 21–22; the
  reported c_S = 1.64 and the 37.9% rejection rate are consistent with α = 0.10 and the squared (modified method of
  moments) statistic, matching Figure 2's α = 0.10. [L–M]
- *Frequency is not size.* Figure 2 is a sign map with a 0.1% threshold. Within the redundant part of the window
  (0 < h1 ≲ 4.6, −3 ≤ h2 ≤ h1), the short test wins on most of the area. The long test wins only between the
  diagonal and a boundary that rises from 0 at the origin to about 1.4 near h1 = 4 (read from the figure); beyond
  h1 ≈ 4.6 the two powers differ by less than the threshold. Theorem 2.4 (p. 13) makes this exact: for fixed h1
  there is a single cutoff h̄2, with losses below it and gains above. The size of the losses is known only at
  the points of Table 2. [M]

**What a "typically" statement depends on.**

1. *The window.* The region where retaining loses is unbounded below in h2, and the region of no difference grows
   with h1 because both powers approach one. A weighting with much mass far from the origin, or very near it,
   makes any comparison look cheap.
2. *Where the weight sits.* Section 5 (pp. 22–23) proposes weighting h1 and h2 symmetrically. That puts half the
   mass on h2 > h1, where the added inequality is not redundant and the long test gains. It answers a different
   question, and its conjecture that averaging favors the larger model does not bear on this claim.
3. *Frequency against size.* A test can lose on most alternatives by very little, or rarely by a lot.

**What would justify "typically."** A stated weighting on the maintained redundant alternative only, with the
comparison normalized to where power is informative: for example, directions in Λ1, each scaled so that the
better of the two tests has a fixed power. Report both the share of directions on which retaining loses and the
distribution of the loss (median and maximum). Then either show that the conclusion survives a class of
weightings, or replace averaging with the maximum shortfall relative to the better of the two tests, which needs
no weighting. [M]

**The evidence falls short. Smallest missing comparison.** In the model above (α = 0.10, Ω = I, S = S_max,
fixed h), compare the powers of the two exact-size max tests, 1 − ∏_{j∈J} Φ(c_J − h_j) for J = {1, 2} and
J = {1, 2, 3}, over h with max(h1, h2) > 0 and h3 ≤ max(h1, h2). Produce a sign map like Figure 2 and the loss
magnitudes. The comparison has a closed form, so it needs no simulation. I stop there.

A hypothesis, not a result: the critical-value penalty from adding a third inequality is smaller than that
from adding a second, so the losses with two cores may be smaller than those in Table 2. The missing comparison
tests this directly. [L]

## 3. What to keep from Addition.pdf

**Setting**
- p. 4: the moment (in)equality model, Definition 1.1, and the test (1.2).
- pp. 5–7: Q_n in (1.4), Assumptions 1–2, S_max (1.5), S_mmm (1.6), the GMS critical value (1.7), Assumption 3
  with its examples, and Andrews–Soares uniform size. Correct the typo in Assumption 3(d): κ_n/√n → 0.
- pp. 7–9: the §2 setup (2.1), the irrelevance condition μ1 ≤ μ2, the local parameters (2.2), and Theorems 2.1–2.2.
- pp. 18–20: the §3 setup (3.1), the irrelevance condition min(μ1, μ2) ≤ μ3, (3.2), and Theorem 3.1. Q_{n,S}
  there uses W1 only although M_S contains W1 and W2, and the test D is a leftover; both should be cleaned up.

**Local power**
- pp. 10–15: Definition 2.1, Assumptions 4–7, Theorem 2.3 (ambiguity), and Theorem 2.4 (unique cutoff). Theorem
  2.4 is the cleanest statement in the paper. Assumption 7 still has to be verified for S_max and S_mmm.
- p. 16: Table 1 (seven cases), including the column on relevance (h1 ≥ h2).
- p. 18: Figure 2, once S is stated; it needs a companion that shows magnitudes.
- p. 21: the four configurations in Theorem 3.2, as candidates to verify rather than results.
- pp. 26–31: Lemmas A.1–A.3, which carry the proofs of Theorems 2.1 and 3.1.

**Simulations**
- pp. 21–22: the §4 design and Table 2. State α and S.

**Set aside:** the commentary on pp. 2–3 (keep the reference list for the literature step), Section 5 (pp. 22–23)
except as a statement of the weighting question, Section 6 (p. 24), the Conclusions (p. 25), and the Figure 1
schematic (p. 17). One idea on pp. 3 and 25 is worth carrying to the outline discussion: redundancy should be
judged on studentized moments rather than on raw expectations, as in Galichon and Henry's core-determining
definition. Ivan's notes already impose redundancy on standardized local means.
