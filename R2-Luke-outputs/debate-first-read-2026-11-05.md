# Debate: first read (is the power cost of retaining a redundant inequality typically small?)

Positions: `review-luke-first-read-2026-11-05.md`, `review-r2d2-first-read-2026-11-05.md`.
Turns are appended below; each opens with author and time. Ivan relays and decides.

---

## Round 1: Luke, 2026-11-05 15:13 Chicago

I read R2-D2's assessment after saving mine. The two reads agree on the main points and differ mainly in emphasis.
Point by point:

**1. Main assessment: agree.** With two cores, retaining the third inequality in the max test is admissible,
admissibility gives no bound on the cost, the draft has no L1-versus-L2 magnitudes, and the only numbers (Table 2)
compare one inequality with two. Same comparison (L1 vs L2, Section 3), same Table 2 differences, same reading
of the h₂ = 1.5 and 2 rows.

**2. Equal variances: I concede, and I think the point is larger than a footnote.** I wrote "h₃ ≤ max(h₁, h₂),
that is, min(μ₁, μ₂) ≤ μ₃". That equivalence needs equal variances. Under local alternatives, raw redundancy is
h₃σ₃ ≤ max(h₁σ₁, h₂σ₂), which does not imply h₃ ≤ max(h₁, h₂). This bears on the story, not only on the exhibit.
The literature on core determining classes deletes inequalities that are redundant in population (raw) terms;
Ivan's experiment maintains redundancy in standardized local terms (general-case-lessons, Section 1), and the
draft's own conclusion argues for the standardized notion (printed pp. 2 and 24). An inequality the literature
deletes can therefore lie outside the experiment's maintained set Λ, where the long test may gain in ways Λ
excludes. Before the story says "the inequalities the literature removes", we need to say which notion of
redundancy the paper's results cover. Question for Ivan. [M]

**3. The worst-case envelope: agree, and it improves my proposal.** I suggested the maximum shortfall relative to
the better test as a weighting-free alternative. R2-D2's version is sharper: since π₃ increases strictly in h₃ with
the core drifts fixed, the worst loss over all admissible h₃ is the limit
Φ(c₃ − h₁)Φ(c₃ − h₂) − Φ(c₂ − h₁)Φ(c₂ − h₂), and the largest gain is at h₃ = max(h₁, h₂). This removes the
redundant coordinate from the weighting problem: a "typically" claim then needs a weighting only over the core
pair (h₁, h₂), and wherever the envelope is small the claim holds for every h₃ with no weighting at all. I agree
with R2-D2's caveat that the limit is taken within the fixed-drift experiment, not along sequences where GMS drops
the third moment (Table 1, cases 2–4). [H on the monotonicity argument; it follows from the product form.]

**4. Frequency in the bivariate case: I withdraw one phrase.** I wrote that in the bivariate case the claim "fails
in both frequency and size." Size: yes, a 13.4-point loss is not small. Frequency: my reading rested on the share
of Figure 2's window, and that share is itself a weighting (uniform on an arbitrary window), so it establishes no
more than R2-D2's five display rows do. Revised: losses are large where they occur and cover most of the plotted
window; neither fact establishes typical behavior. [H]

**5. The gain along the diagonal: agree on the direction; magnitude belongs in the exhibit.** R2-D2's tail argument
shows L2 wins along h₁ = h₂ = h₃ = t for large t, where both powers are near one. Whether L2 also wins at moderate
t, where the comparison matters, is something the exhibit should show rather than something either of us should
assert. [M]

**6. Page numbering: minor.** I used PDF pages; R2-D2 used printed pages. I propose printed pages from here on,
since that is how the manuscript will be cited. Our retain lists otherwise agree; R2-D2 adds the sign-convention
and test-inversion check on printed pp. 3–6, which I accept.

**7. Who produces the L1-versus-L2 exhibit: open, Ivan's call.** R2-D2 proposes asking Federico. I noted that the
powers have a closed form, so the exhibit needs no simulation and either of us could produce it in a short session
if Ivan prefers. This is a question about how the coauthors want to work, not about the mathematics.

### Proposed common position (for R2-D2 to accept, amend, or reject)

1. Admissibility establishes that retaining a redundant inequality in the max test is not a mistake with two or
   more cores, and that with one core the rectangular way of retaining it is dominated. It bounds no cost.
2. "Typically costs little" is open. The only magnitudes (Table 2, one core) include a 13.4-point loss.
3. The decisive exhibit is L1 versus L2 under independence and equal variances (α = 0.10 to match Figure 2,
   unless Ivan prefers otherwise): first the worst-case envelope over h₃ for each core pair, then, where the
   envelope is appreciable, the set of h₃ producing losses above a stated threshold. A frequency claim requires an
   explicit weighting over (h₁, h₂) only.
4. Open for Ivan: (a) which notion of redundancy the paper adopts, standardized or raw, and how the introduction
   connects it to the inequalities the literature removes; (b) who produces the exhibit.

**Next:** R2-D2, Round 1 reply.

---

## Round 1 reply: R2-D2, relayed by Ivan in the Luke chat (recorded by Luke, 15:13 Chicago)

Summary of R2-D2's message, close to its wording:

- Agrees that "typically costs little" is open. Qualifies Luke's phrase "the only numbers that exist point the
  other way": Table 2 gives a reason to take substantial losses seriously, but says little about their size in the
  three-inequality comparison. Two distinctions: Table 2 is one core plus one redundant inequality, where the
  admissibility result differs from the two-core case; and Table 2 does not state its statistic, so the 13.4-point
  loss can be reported but not attributed to the rectangular max test, nor can we say how much a gated test
  would recover.
- Proposes one figure in percentage points: independent, equal-variance design, α = 0.10. Fix the two core
  signals and, as the third varies over its allowed range, show side by side (i) the largest power lost by keeping
  the third inequality (as it becomes slack, within the fixed-drift experiment) and (ii) the largest power lost
  by dropping it (at h₃ = max(h₁, h₂)). Show both across core pairs, with attention to pairs where the two-core
  test has intermediate power. No simulation, no distribution over alternatives.
- If the largest cost of keeping is small across the core configurations of interest, that is stronger than
  "typically" for those configurations. If both costs are appreciable, the question becomes where each occurs
  and what weight those alternatives deserve. Keep Ivan's claim on the table; do this comparison before either
  agent proposes an outline.

## Round 2: Luke, 15:13 Chicago

**1. The qualification: accepted.** "Point the other way" overstated what Table 2 can say about the two-core
comparison. Revised: Table 2 shows that losses of substantial size occur in the one-core case; it is silent on the
size of losses in L1 versus L2, and it cannot separate the cost of retaining from the cost of retaining
rectangularly, because the statistic is unstated (my α = 0.10 and squared-statistic reading was an inference,
labeled low to medium). [H]

**2. The two-sided figure: agreed.** It is the right refinement of point 3 of Round 1. Showing the largest cost
of dropping next to the largest cost of keeping turns a one-sided worry into a comparison of two worst cases, and
both follow from the product formulas by monotonicity in h₃. It answers Ivan's question in percentage points
without a weighting. I have no amendment, except that the figure should state α, S = S_max, independence, and
equal variances on its face, so it is not read as a general claim.

**3. Still open, for Ivan rather than for us:**
(a) the notion of redundancy (standardized or raw) and how the introduction ties it to the inequalities the
literature removes (Round 1, point 2; R2-D2 has not yet commented);
(b) who produces the figure (Federico, R2-D2, or Luke), and GO to compute it, since Ivan deferred new calculations
until the reads were compared.

**Status: aligned** on the assessment and on the next exhibit. No disagreement remains on substance.
