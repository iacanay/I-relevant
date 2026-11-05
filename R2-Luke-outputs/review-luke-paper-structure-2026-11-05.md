```
HANDOFF  claude → R2-D2
From:      Luke, Research
Date:      2026-11-05 15:50 Chicago
Artifact:  paper-structure.pdf / .tex (R2-D2 draft, compiled 2026-11-05 21:46 UTC, 2 pp.)
Status:    review, round 1
Changed:   none (no edits to R2-D2's files)
Sources:   paper-structure.tex; every cited label checked against the .aux files of the notes;
           three-dimensional-case Prop. 5; necessity-feasible-normal-general-omega Thm. 1 and (1)–(2);
           Addition.pdf §2; R2-D2's unit-diagonal check as summarized in Ivan's relay
Ivan said: structure plus what goes in each section, with file pointers; consensus before he reads it.
Asking:    accept, amend, or reject items 1–3; items 4–6 are optional.
```

# Luke on paper-structure.pdf, round 1

**Verdict: ready with fixes.** I agree with the order, the section boundaries, and the restraint on "typically."
Every pointer checks out: general-case Lemmas 1 and 6, Definition 3, Propositions 4, 5, 7, and 11, Corollaries
8–10, equations (1)–(4); three-dimensional-case Propositions 2 and 6; limit-moment-selection Propositions 1–2;
necessity-feasible-normal-general-omega Theorem 1 on p. 2, with feasible cone 0 ≤ a₂ ≤ a₁ for every ρ
(its display (1)). The core-only rectangle result is indeed only in general-case-lessons.

## Changes I propose

**1. Section 3 needs the positive statement before the counterexample.** As drafted, the section tells the reader
only that scale can break admissibility. Your unit-diagonal check also shows what survives, and the reader needs
it to know that Section 4's independent design is covered: under arbitrary positive scales the dual-cone
dichotomy, first-moment rigidity, feasible support, Proposition 7, and Corollary 8 carry over; under independence
Corollary 9 and the core-only rectangle result carry over, and Proposition 11 holds with the gate
X₁/v₁ + X_r/v_r. Suggested order: derive σ₃h₃ ≤ max{σ₁h₁, σ₂h₂}; state what carries over (one proposition or
remark); then the counterexample, which shows that correlation combined with unequal scale is what breaks it.
Source: unit-diagonal-check-2026-11-05.md.

**2. Federico's two-moment results have no home.** The draft keeps Table 2 but drops Theorems 2.3–2.4 (the single
crossover h̄₂) and Figure 2. These are existing results, and they are about one core and one redundant moment.
Proposal: organize Section 4 by the number of cores, mirroring Section 2.

- 4.1 Two cores and one redundant inequality: unchanged, the lead exhibit.
- 4.2 One core: first the two-moment case from Addition §2 (Theorem 2.4, Figure 2, Table 2, with the statistic
  and level verified and the rows that preserve redundancy marked); then the three-moment comparison of the
  core-only test, the rectangle, and the gate.

This puts Table 2 next to the model it studies and lets the reader see the one-core design cost in both
dimensions. If Ivan prefers to drop Theorem 2.4 and Figure 2, the document should say so.

**3. One coordinate system in Section 3.** The section introduces standardized drifts h and scales σ, but the
example is stated in raw coordinates with covariance (1, 2; 2, 5). Either keep the raw integers and add one
sentence translating them (σ = (1, √5), correlation 2/√5, restriction √5 h₂ ≤ h₁), or state the example in h.
I lean to raw integers plus the translation, since the numbers are cleaner.

## Optional

**4. Section 2.1, the class of tests.** A sentence on why the analysis is restricted to lower regions:
three-dimensional-case Proposition 5 gives an exact-size test that is not lower and is beaten by the constant test
ψ ≡ α. It also shows Conjecture 12 is stated for the right class.

**5. Section 2.3, proof status.** The sufficiency direction rests on the Lehmann–Romano ray criterion
(references/, Ch. 6). R2-D2's August 27 checkpoint listed an external check of the book theorem as a remaining
proof-completion task; if it is still open, the structure should record it as open work rather than imply the
theorem is ready.

**6. Section 2.2.** The core-only rectangle result should become a numbered result in the paper, since it is the
benchmark the two-core comparison in Section 4.1 starts from.

If R2-D2 accepts 1–3, I agree with the revised version without another round, unless the wording of item 1 changes
what is claimed.
