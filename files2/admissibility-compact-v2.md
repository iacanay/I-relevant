# Admissibility project — compact resume memo (v2)

Purpose: let a future session resume the restricted-admissibility project quickly. Supersedes `admissibility-conversation-compact.md` with the results from this session.

## Role shorthand

**Yoda** = act as a top-tier statistician/econometrician in the style of Joe Romano: rigorous, proof-oriented, skeptical of unsupported claims, focused on admissibility, testing, convex acceptance regions, and the normal experiment. Do not invoke external results without a formal statement and confirmed reference.

## State of the unrestricted theorem (settled)

Normal model `X ~ N(μ, Σ)`, Σ known PD, testing `H0: μ ≤ 0` (orthant null) vs complement.

- Result is a **sufficiency** theorem, not an iff. Closed convex acceptance region ⇒ **d-admissibility**; plus exact size attained at a finite null point ⇒ **α-admissibility**. Exact size is necessary for α-admissibility (zero test is the witness).
- Proof goes through the Lehmann–Romano proposition (Thm 6.7.1 / Cor 6.7.1): canonical form `θ = Σ⁻¹μ`, `Ω_H = {θ: Σθ ≤ 0}`, ray condition verified from the level constraint (if `Σa ≤ 0` the whole ray sits in `Ω_H` while `a'Σa > 0` drives rejection prob → 1, contradicting level).
- **Randomized competitors handled correctly** by invoking the proposition's conclusions directly (d- and α-admissibility against randomized tests), NOT by the geometric `A ⊆ A₀ ⇒ φ ≥ φ₀` route (that step is only valid for nonrandomized competitors).
- Outstanding (cosmetic): confirm exact statement/numbering of LR 6.7.1 / Cor 6.7.1 against `Ch6.7.pdf`. Everything rests on that proposition.
- File: `i-relevant-notes.tex` (current, correct).

## The restricted problem (the actual project)

Bivariate, `Σ = I₂` to start:

```
Λ   = {μ : μ₂ ≤ μ₁}
Λ₀  = {μ ∈ Λ : μ₁ ≤ 0}      (since μ₂ ≤ μ₁ ≤ 0)
Λ₁  = {μ ∈ Λ : μ₁ > 0}
```

Two motivating tests, both exact size α at the least favorable null point μ = 0:

- Short: `φ_s = 1{x₁ > c_s}`, `c_s = Φ⁻¹(1−α)`, `A_s = {x₁ ≤ c_s}`.
- Long: `φ_ℓ = 1{max(x₁,x₂) > c_ℓ}`, `c_ℓ = Φ⁻¹(√(1−α))`, `A_ℓ = {x₁ ≤ c_ℓ, x₂ ≤ c_ℓ}`. Note `c_ℓ > c_s`.

**Why the naive analog (closed convex ⇒ admissible) is FALSE here.** Restricting Λ shrinks Λ₁, which (a) breaks the LR ray condition for some support directions and (b) *creates new dominators*, because a competitor now only has to win on the smaller Λ₁. Witness: `φ_Δ = 1{x₂ − x₁ > c}` is closed/convex/level-α but aims rejection mass at μ₂ − μ₁ > 0, a region the restriction deleted, so the short test dominates it on Λ₁.

## Goal (restated)

No longer an iff. Find the **class restrictions** on the tests considered under which a sufficiency result ("closed convex ⇒ admissible relative to the class") holds in the restricted problem. Practical payoff: short and long are mutually non-dominating, and ideally both admissible within a natural class.

## Candidate class (k=2, Σ=I₂)

`C_{≤α}` = nonrandomized tests `φ: R² → {0,1}` with:

1. **Level**: `sup_{Λ₀} E_μ[φ] ≤ α`.
2. **Coordinatewise monotonicity**: `x ≤ y ⇒ φ(x) ≤ φ(y)`. (≈ Andrews–Soares monotonicity.)
3. **Order-respecting priority of coordinate 1**: `x₁ ≥ x₂ ⇒ φ(x₁,x₂) ≥ φ(x₂,x₁)`.

`C_α` adds exact size. For coordinatewise monotone tests the least favorable null is μ = 0, so size = `E₀[φ]`.

**What each condition is forced to do (defense against "gerrymandered class"):**
- Monotonicity (2) already kills `φ_Δ` (e.g. (0,2) ≤ (3,2): φ_Δ drops 1→0).
- Order-respecting (3) kills the X₂-only test `1{x₂ > c}`, which is closed, convex, AND monotone, yet dominated by short on all of Λ (μ₂ ≤ μ₁ ⇒ its power ≤ short's everywhere). Without (3) the candidate theorem is simply false. So (3) is load-bearing, not cosmetic.
- The containment condition `A ⊇ Λ₀` (Romano–Shaikh style) does NOT do this job — `A_Δ` already contains Λ₀ — so keep containment only for cone-alignment, not for excluding counterexamples.

## NEW results this session

### (a) Short and long are mutually non-dominating on Λ₁ — PROVED

Power functions: `β_s(μ) = Φ(μ₁ − c_s)` (depends on μ₁ only); `β_ℓ(μ) = 1 − Φ(c_ℓ − μ₁)Φ(c_ℓ − μ₂)` (symmetric, coordinatewise increasing).

- **Short wins when μ₂ ≪ μ₁** (clean, general): fix μ₁ > 0, send μ₂ → −∞; then β_ℓ → Φ(μ₁ − c_ℓ) < Φ(μ₁ − c_s) = β_s since c_ℓ > c_s.
- **Long wins near the diagonal** (μ₂ ≈ μ₁): on μ₁ = μ₂ = t, the miss probabilities are `1 − β_s = Φ(c_s − t)` and `1 − β_ℓ = Φ(c_ℓ − t)²`. By Mills, `log Φ(c_s−t) ~ −½(t−c_s)²` and `log Φ(c_ℓ−t)² ~ −(t−c_ℓ)²` (twice the rate — long misses only when BOTH coords fall short), so the log-ratio is `−½t² + O(t) → −∞` and long wins for all large t. Near the origin: `g'(0) = −φ(c_s) + 2√(1−α)φ(c_ℓ) > 0` for all α (checked on a grid), so long also wins for small t > 0.

Interpretation: short is better in the cone interior (μ₂ well below μ₁, where x₂ is uninformative); long is better near the boundary (μ₂ ≈ μ₁, where x₂ carries signal). The mutual-non-domination checkpoint **passes** → the class program is not dead.

Files: `simple-comparison.tex`, figure `short_vs_long.png`.

### (b) KEY structural insight: short and long are NOT symmetric w.r.t. admissibility

Feasibility (Σ = I₂): a support direction `a` of the acceptance region is reachable in Λ₁ iff `a₂ ≤ a₁` (the recession cone of Λ is {d₂ ≤ d₁}).

- **Short test is α-admissible WITHOUT any class restriction.** `A_s = {x₁ ≤ c_s}` has the single support direction (1,0), with 0 ≤ 1 → feasible. So the LR ray condition holds on the restricted alternative (ray `(λ,0) ∈ Λ₁`), and LR applies directly: closed convex + exact size at μ=0 ⇒ α-admissible against all (randomized) competitors. Proof in `short-test-admissibility.tex`.
- **Long test is NOT admissible without restriction.** `A_ℓ` has support direction (0,1) (face x₂ = c_ℓ), with 1 > 0 → infeasible. Ray condition fails, LR is silent, and Ivan has explicit counterexamples confirming inadmissibility.

**Consequence:** the class restriction is doing work ONLY for the long test (and convex tests with an infeasible support face). It is never needed for the short test.

## The sharpened open question (do this NEXT)

Is the long test admissible *within* `C` (i.e., is there a dominator that is itself order-respecting)?

Suspicion: long is dominated without restriction by an *asymmetric* test that keeps the x₂-rejection only when x₁ is also large (it spends mass on `{x₂ > c_ℓ, x₁ small}`, which sits over deleted alternatives). The crux: **is that dominator order-respecting (inside C)?**
- If YES → long is inadmissible even within C, and the class program (as currently specified) is in trouble.
- If NO → the order-respecting condition is exactly what protects long, and the program is on track.

Settle this BEFORE the rectangular subclass.

## Next tasks (updated)

1. **Search for an order-respecting dominator of the long test.** This decides whether C (conditions 1–3) is enough or needs strengthening. Highest priority.
2. If long survives in C: prove admissibility within the **ordered rectangular subclass** `A_{c₁,c₂} = {x₁ ≤ c₁, x₂ ≤ c₂}`, `c₁ ≤ c₂`, `Φ(c₁)Φ(c₂) = 1−α` (one-parameter bridge: short = (c_s,∞), long = (c,c)). Identify which steps use rectangularity.
3. Support-sorting lemma as the geometric engine: for lower-set + order-respecting A, `h_A(a) < ∞ ⇒ h_A(a↓) < ∞`, and if a₂ > a₁ then `h_A(a↓) ≤ h_A(a)`, where `a↓ = (max,min)`. Replaces an x₂-heavy support direction with a sorted (feasible) one.
4. Keep necessity separate from sufficiency. Old convexification/separation argument is not correct as written.
5. (Cosmetic) verify LR theorem numbering against `Ch6.7.pdf`.

## Files to carry forward

- `admissibility-compact-v2.md` — this memo.
- `i-relevant-notes.tex` — current correct unrestricted proof (d- + α-admissibility, randomized fix in).
- `simple-comparison.tex` + `short_vs_long.png` — short vs long mutual non-domination (proposition + figure).
- `short-test-admissibility.tex` — lemma: short is α-admissible with no class restriction; remark on why long differs.
- `Ch6.7.pdf` — LR Section 6.7 excerpt (reference to confirm).
- (older) `counter-example-june27.tex`, `scratch-idea.tex` — restricted-Theorem-2 counterexample and early class-restriction formalization.
