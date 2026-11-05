# R2-D2’s independent first read · November 5, 2026

**Assessment.** With two core inequalities and one identification-redundant inequality, retaining all three in the max test is admissible in Ivan’s Gaussian experiment for every positive-definite correlation matrix. Federico’s power functions let us measure the cost of retaining the third inequality relative to the two-core max test. Whether that cost is typically small is open. The draft’s only numerical table compares one inequality with two, and some of its losses are substantial.

## The comparison I would use

Compare the two-core max test with the all-three max test. In Section 3 of the draft these are **L1 and L2**. The procedure labeled S there uses only the first core inequality. Use equal marginal variances to link the identified-set restriction in (3.1) to Ivan’s standardized mean restriction. With positive drift denoting a violation, the maintained alternatives then satisfy `max(h₁,h₂) > 0` and `h₃ ≤ max(h₁,h₂)`. With unequal variances, identification redundancy in the original units need not imply this ordering of standardized drifts.

**What admissibility contributes.** Corollary 9 of `notes/general-case` covers the all-three rectangle against every level-α competitor, including randomized tests. With two cores, a dominator must match the test’s first moments at the origin. The two core faces and this first-moment restriction suffice to protect the third face as well (Lemma 6 and Proposition 7). The number of cores matters. With one core and two redundant inequalities under independence, a calibrated test using the sum of the core and a redundant coordinate strictly improves the rectangle (Proposition 11). That improving test itself uses redundant information. See also Propositions 2 and 6 of `notes/three-dimensional-case`. These results concern uniform improvement. They place no numerical upper bound on the cost of retention.

**What the power analysis contributes.** Take independent coordinates and fixed finite drifts, so all coordinates enter GMS calibration. In the positive-violation convention, write Φ for the standard normal CDF and let cₖ solve Φ(cₖ)ᵏ = 1 − α. Theorem 3.1 specialized to the max test gives the exact limiting powers

- π₂ = 1 − Φ(c₂ − h₁) Φ(c₂ − h₂),
- π₃ = 1 − Φ(c₃ − h₁) Φ(c₃ − h₂) Φ(c₃ − h₃).

Holding the core drifts fixed, π₂ is constant and π₃ increases strictly with h₃. At a sufficiently negative finite h₃, the third coordinate rarely triggers rejection, but both core coordinates face the higher cutoff c₃. Retention then costs power. Its greatest possible gain for this core pair occurs at h₃ = max(h₁,h₂). For example, along h₁ = h₂ = h₃ = t the all-three test gains for sufficiently large finite t because its probability of missing the alternative, Φ(c₃ − t)³, eventually falls below Φ(c₂ − t)² by the Gaussian tail rate. Both tests approach power one there. This establishes a direction of gain, while its practical magnitude still needs quantification. The draft gives no percentage-point magnitudes for L1 versus L2.

**What is actually measured.** Table 2 compares one versus two inequalities, using 2,000 replications of samples of size 1,000, h₁ = 1, equal variances, and zero correlation. Among rows satisfying h₂ ≤ 1, the empirical power differences from retaining the second inequality appear below.

| h₂ | −1 | −0.5 | 0 | 0.5 | 1 |
|---|---:|---:|---:|---:|---:|
| Long minus short, percentage points | −13.40 | −12.80 | −8.85 | −0.80 | +11.70 |

At h₂ = −1, rejection falls from 37.90% to 24.50%. At h₂ = 1 it rises to 49.60%. The two largest reported gains, at 1.5 and 2, occur where adding the inequality **changes the identified set**. The five rows that preserve redundancy already show why both frequency and magnitude matter. Equal weight on these five displayed rows would assign four fifths of the weight to losses, three fifths to losses above five points. The author’s choice of display points supplies no empirical distribution over alternatives. These are reported simulation differences, with Monte Carlo sampling variation. I checked the table entries without rerunning the simulations.

**Smallest next check.** Ask Federico for one L1-versus-L2 exhibit with the equal-variance, independent design above. For each chosen core pair, the worst loss over finite redundant drifts has a simple envelope. As h₃ decreases, π₂ − π₃ approaches Φ(c₃ − h₁)Φ(c₃ − h₂) − Φ(c₂ − h₁)Φ(c₂ − h₂). This limit varies the *fixed drift* across experiments that retain all three for calibration. A sequence on which GMS selects the third moment away has a different calibration. Start with the envelope for core pairs where the short test has intermediate power. Wherever that envelope is small, every allowed h₃ costs at most that much, regardless of its weight. Where it is appreciable, report the h₃ values producing a loss above a stated percentage-point threshold. A frequency claim then requires an explicit weighting over those alternatives. I would see this exhibit before choosing a headline.

## What I would keep from the November draft

Page numbers below are printed pages. The PDF viewer counts the cover as page 1, so add one for the viewer page.

| Printed pages | Material to retain |
|---|---|
| 3–6 | The identified set, test at a candidate parameter, studentization, and GMS calibration in (1.4)–(1.7). Use one sign convention throughout and check test inversion before reusing the displays. |
| 6–14 | The two-inequality benchmark, the finite-drift power comparison in Theorem 2.3, and the conditional crossover in Theorem 2.4 under its stated assumptions. |
| 15–17 | Table 1’s distinction between slackness visible to GMS and finite drift, and Figure 2 as a two-dimensional sign comparison. Restrict the interpretation to alternatives that preserve redundancy. |
| 17–20 | The nested identified sets in (3.1), the local parameters in (3.2), and the two- and three-coordinate rejection probabilities in Theorem 3.1. The examples in Theorem 3.2 motivate comparisons. Its informal rankings and “super slack” case require checking against the selection scale. |
| 20–21 | The design and the two sets of rejection rates in Table 2, with the dimensionality and redundancy qualifications above. |
| 25–30 | Appendix Lemmas A.1–A.3 as technical background for the local limits. Verify the dimensional extension and sign conventions if used in a proof. |

I used `notes/master-structure` for the authority and supersession map and `notes/general-case-lessons` for the coauthor-facing interpretation. I checked the cited result statements in the technical notes. This was a first read, without a fresh proof audit. The draft’s planning comments, conjectured average-power recommendation, and proposed mixing results supply no evidence for this assessment.
