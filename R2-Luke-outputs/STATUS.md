# i-relevant: shared status (Luke and R2-D2)

**Introduction:** Ivan finalized [paragraph 1](introduction-structure-r2d2-2026-11-20.md#official-paragraph-1). The same notes contain the working second paragraph and Ivan’s structure for paragraphs 3–8. R2-D2 reviewed Luke’s paragraphs 3 and 4. Their wording is with Ivan.
**Section 2:** R2-D2 answered both of Luke’s November 23 notes. Ivan decides whether to keep both example citations.
**Appendices A and B.** Luke checked [Appendix A](review-r2-appendixA-2026-11-23.md) and [Appendix B](review-r2-appendixB-2026-11-23.md) and found the proofs correct. Both Appendix B wording suggestions are in the manuscript. Condition (2.2)(vii) was verified on p. 124 of the [published Andrews and Soares paper](../references/andrews-soares-2010.pdf). R2-D2 checked the scope of Proposition 2 after Luke’s review. Its classification still holds with the ordered alternative and the full negative orthant as null.
**Appendix C.** Luke [completed his independent review](review-r2-appendixC-2026-11-23.md) at `43e4baa97a38`. Appendix C in the [current source](../main.tex) matches the reviewed text. The equal-power calculation is on p. 54 and Figure 4 on p. 55 of the [paper](../main.pdf).
**Survey example:** Appendix D and Examples 1 and 2 use the randomized-incentive survey. Appendix D states positive nonparticipation at the highest offer, gives the sharpness argument, and includes a quarter of never-responders in its dollar example. The agreed equal- and unequal-allocation passages are in the manuscript.
**Studentization:** Ivan favors equal shares for the one-core ordered example and unequal shares to motivate Section 3.5. The [three suggested passages](survey-example-sequence-2026-11-23.md) follow that sequence.
**Alternative running example:** R2-D2’s [pricing note](pricing-example-max-order-2026-11-23.md) derives the exact two-core benchmark from single-peaked expected margins and the one-core benchmark from an additional observed price choice. Proposed for discussion.
**Last updated:** 2026-11-24, by R2-D2.

## How this file works

- Shared record for both agents. Either agent updates it after each substantive step: the next-actor line,
  the workstream table, and one new log line. Do not rewrite the other agent's log entries.
- Records only what Ivan decided and where things stand. Analysis goes in separate files in this folder.
- Each agent also keeps private notes: R2-D2 in `Codex/R2-D2/context/projects/i-relevant.md`; Luke in
  `Cowork-Workspace/Skills/luke/context/research-i-relevant.md`. Those are not shared and are not edited by the other agent.
- States: **proposed**, **plan agreed**, **in progress**, **revised**, **checked and ready**. Only Ivan closes an item.

## Project

Bugni and Canay, "On the irrelevance of irrelevant moment conditions." Admissibility and local power of tests
in moment inequality models when some inequalities are identification-redundant. Repository: this folder
(origin github.com/iacanay/I-relevant).

## Decisions by Ivan

- 2026-11-23. Main text must be elegant and free of clutter; details go to the appendix. Simplifications in the main text are fine as long as the example maps to the appendix. Standard for reviews: keep a qualification in the main text only when omitting it would change what the reader understands the example to show. Examples 1 and 2 now share the survey-mode setting of Appendix D (Federico's moments (Y-theta)I{X=j}); appendix keeps P as the law of the observed data (no E_P on Y*).

- 2026-11-16. GO for a new draft implementing the November 13 nine-item reading tracker and November 16 items 10–13. Add Setup and notation; begin admissibility with the unrestricted classical benchmark; distinguish ordered and redundancy-only mean spaces; expand the covariance condition with a failure example; foreground Theorems 1 and 2. Mark new/revised main text blue relative to the current baseline and keep appendix text black. This supersedes the earlier all-blue A.12 instruction and makes the larger-null version the primary modified experiment.

- 2026-11-12. Accepted R2-D2's response to Luke's revised Section 2.5 review and authorized direct edits. Mark new main text in blue and keep all of A.12 blue; preserve the ordered null and full weighted-core covariance condition, explain the remaining redundancy obstruction, retain Theorem 4 and add its one-core converse, and remove the duplicate closing paragraph. Save memory for changing computers.

- 2026-11-12. Authorized direct manuscript implementation in blue of the agreed two-experiment story: demanding ordered benchmark, its lessons and multi-core open questions, classical benchmark, then broader admissibility results in the modified experiment under covariance restrictions. The one-core reversal illustrates that progression rather than organizing it. Keep one main theorem, related results/proofs in the appendix, and the existing power analysis in the original experiment.

- 2026-11-12. After reading the enlarged-alternative note, Ivan proposed repurposing Section 2.5 as “A modified experiment”: shorter lessons, explicit open questions, motivation and definition of the enlargement, one main formal result, related results in the appendix, and targeted edits elsewhere. Asked R2-D2 to save the plan for a separate chat, without implementing now. Working recommendation: all-nice theorem in the main text; stronger rectangle result in the appendix. Handoff: `section-2-5-modified-experiment-plan-2026-11-12.md`.
- 2026-11-12. Authorized a separate document developing the most useful admissibility results in the enlarged-alternative model under dependence, with complete proofs and pros/cons for the paper. Independence alone is not an adequate main result. Ivan will review before making manuscript decisions; no manuscript edit authorized by this task.
- 2026-11-12. On the full-read exchange, Ivan sides with R2-D2: brief enlargement fix (no long explanation); a short clarification that means adding up does not imply singular Omega; keep the regret ranking but call the difference modest; Appendix C stays in the appendix; RSW qualification stays. Ivan edits the manuscript himself.
- 2026-11-10. Current project team is Ivan Canay and Federico Bugni only; Denis is busy and is not participating for the moment. This supersedes the earlier three-coauthor working description, without making a permanent authorship decision. Ivan has not yet read the simulation plan and will review it later; do not treat the proposed simulation design as approved.

- 2026-11-10. Production numerical code will be in R, organized under `R-codes/` for Ivan to inspect and run. A separate terminal-enabled coding agent is to implement, test, and complete feasible local computations; Quest is available if measured runtime warrants it. Python pilots remain verification references.

- 2026-11-10. R2-D2 to read all of `supporting/Addition.pdf` and prepare a separate Section 4 architecture and computation plan, centered on three inequalities and the two core allocations. Luke should draft from this curated handoff rather than from Addition. This task does not authorize edits to `main.tex`.

- 2026-11-10. Section 2 opening now says the normal model is "motivated by the Gaussian limits of studentized moments under local alternatives" (R2-D2's wording). Cite the published 2026 version of Canay, Illanes, and Velez.
- November 5 evening. Ivan authorized Luke to write Section 2 directly in the manuscript. R2-D2 gives feedback on the mathematics and whether the prose reads naturally. Other sections wait until Ivan settles Section 2.

- 2026-11-05. This folder is the repository. Every .md file produced by Luke or R2-D2 goes in `R2-Luke-outputs/`.
- 2026-11-05. Focus files: `general-case-lessons`, `master-structure`, `general-case`, `three-dimensional-case`,
  and `Addition.pdf`.
- 2026-11-05. `Addition.pdf` contains outdated comments and material that must be ignored. What is needed from
  it: the simulations, parts of the setting, and the local power analysis. Be selective.
- 2026-11-05. Working story (Ivan's proposal, open to challenge): the literature has focused on removing
  redundant inequalities (core determining classes and related work), because they do not affect identification
  and because removing them helps computation. For inference, this effort matters less than it seems. Step one:
  the limit experiment and general admissibility results; using redundant inequalities is often admissible, with
  special cases where it is not. Step two: local power with three moment inequalities (the minimum that shows all
  cases), quantifying how often a test wins or loses, beyond admissibility.
- 2026-11-05. Before substantive work: setup and kickoff only, then bring R2-D2 in.
- 2026-11-05. GO for the revised reorganization. `Addition-2.pdf` archived; old memos filed by authorship;
  `master-structure` kept through the reads. Source of `Addition.pdf`: Federico's folder in the shared Overleaf project
  (`Notes-Fede/paper/`); no local copy needed.
- 2026-11-05. Manuscript workflow, in two phases.
  Phase 1: Ivan writes the first full draft alone, locally, in this folder (`main.tex` and bibliography at the root of
  i-relevant), tracked in the existing GitHub repo (iacanay/I-relevant). The repo is not linked to Overleaf. Luke and
  R2-D2 read the draft there and do not edit it.
  Handover: when the draft moves to Overleaf, Ivan uploads it; the local `main.tex` is renamed into `archive/` with the
  date (e.g. `main-before-overleaf-YYYY-MM-DD.tex`); this file records that Overleaf is the live copy from that date.
  Phase 2: Ivan, Federico, and Denis edit in Overleaf. Luke and R2-D2 read the Dropbox-synced copy of that one Overleaf
  project (`Dropbox/Apps/Overleaf/<project>`, access requested when needed) and never write there; anything written there
  reaches Overleaf. All agent outputs stay in `R2-Luke-outputs/`. Ivan does not work in the Dropbox-synced Overleaf folders.
- 2026-11-05. No GitHub link to Overleaf. Agent .md files and research notes live in Dropbox; they gain little from git.
- 2026-11-05. Title undecided: *Should We Drop Redundant Moment Inequalities?* or *Testing with Redundant Moment Inequalities*.
- 2026-11-09. Multiple-core conjecture (every nice test admissible when |C| >= 2): keep as a formal conjecture in Section 2 for
  now; later it will likely move to an in-line mention in the closing discussion (Concluding Remarks).

## Workstreams

| # | Workstream | State | Next actor |
|---|---|---|---|
| 1 | Folder reorganization | implemented; README written | Ivan (git commit) |
| 2 | Story | R2-D2 first read saved | compare after Luke’s independent assessment is saved |
| 3 | Literature | Reading evidence in `literature-review.md`; living placement and bibliography-status guide in `citation-plan.md` | R2-D2 maintains tracker as references are reviewed; manuscript citation pass awaits Ivan. Section 4 precedents already cited; Tamer check remains open |
| 4 | Paper structure | checked and ready | Ivan reads the agreed outline |
| D | Survey example | The sharpness correction and the links from Examples 1 and 2 are in the manuscript. The separate weighted-gate discussion was omitted by agreement. | Ready for Ivan. The reviews in this final appendix pass cover A–C. |
| D.1 | Fixed-cost example | Exact mean spaces and precision comparison verified in the pricing note. | Ivan and Federico consider whether to use it as the running example |
| 5 | Setup (new Section 2) and admissibility (new Section 3) | All thirteen reading revisions implemented and checked; November 23 citation and core-collection reviews answered in both handoff notes | Ivan reads and decides on the two Section 2 example citations |
| 5.1 | Theorem 4, the rectangle classifications, and omission | Luke checked Appendix A. The Proposition 2 competitors also control size on the full negative orthant. | Ivan considers whether to mention the stronger size guarantee in A.13 |
| 6 | Population-to-Gaussian connection and Appendix B | Appendix B reviewed and revised in red. Section 4 points to (B-1) and uses the updated name for the unordered experiment. | Luke completed the proof check. R2-D2 resolved the wording and citation points. Ready for Ivan. |
| 7 | Section 4 architecture and computations | proposed; standalone 13-page plan, four checked deterministic prototypes, coding brief and configuration saved | Ivan reviews, then assigns production computations; Luke drafts from the confirmed outputs |
| 8 | Section 4 manuscript draft | first draft reviewed by R2-D2; corrections applied; compiled; figures provisional | Ivan edits |
| 8 | Section 4 manuscript review | first review complete; numerical claims checked; targeted prose/attribution corrections requested | Luke, then Ivan |
| 8.1 | Appendix C on precision | Both reviews complete. Luke independently verified admissibility, the loss formulas, the numerical thresholds, and Figure 4. | Ready for Ivan |
| 9 | Modified experiment (Section 3.5) | Primary null is the whole negative orthant; ordered-null version also covered; full covariance explanation and failure Example 2 added; proofs checked for both nulls | Ivan reads; original LP remains paused |
| 10 | Introduction | Ivan finalized paragraph 1 and supplied the structure. R2-D2 reviewed Luke’s paragraphs 3 and 4. | Ivan considers the revisions to paragraphs 3 and 4. |

## Open questions for Ivan

- `.gitignore` now lists `R2-Luke-outputs/` (added by Luke), so already-committed files there stay tracked and new ones do not.
  Either remove the line, or keep it and run `git rm -r --cached R2-Luke-outputs`. Ivan's call.


## Log (newest first)

- 2026-11-24, R2-D2. Reconciled the appendix status summary against the current manuscript and the November 23 survey decisions. The older survey entry still listed the sharpness assumption, never-responders, and main-text integration as pending. All three are in the draft. Corollary 2 remains the separate sufficient case used by Proposition 2. The possible full-null sentence in A.13 is an editorial choice.

- 2026-11-24, R2-D2. Confirmed that Appendix C in the current manuscript (`429c09bc5040`) is byte-for-byte identical to the version Luke reviewed (`43e4baa97a38`). Both reviews are complete.

- 2026-11-24, R2-D2. Applied Luke’s two wording suggestions in Appendix B. Example 5 spells out the open set on which the full rectangle rejects and the core-only test accepts. Proposition 6 refers directly to footnote 1. Verified the uncentered standardized moment bound in Andrews and Soares (2010), condition (2.2)(vii), p. 124. The text specifies the uniformity required over our parameter pairs. Added the [published paper](../references/andrews-soares-2010.pdf) and corrected the bibliography to pp. 119–157. Rebuilt the 59-page manuscript with only the existing introduction-notes reference unresolved. Source SHA-1 prefix `429c09bc5040`.

- 2026-11-24, R2-D2. Checked Luke’s Appendix A handoff against the current source. Appendix A matches the reviewed version and Section 4 already says “unordered.” In Proposition 2 the bivariate construction also controls size on the full negative orthant. The hull-and-halfspace acceptance region is coordinatewise lower. The other branch has negative correlation, and the rearranged region is lower in (X₁, X₂ − ρX₁), whose means are both nonpositive throughout the orthant. Both constructions are calibrated at the origin. Together with Lemma 12 and nesting of the level classes, this gives the same classification if the null is enlarged while the alternative stays ordered. Manuscript unchanged.

- 2026-11-23, Luke. Independent review of R2-D2's Appendix C revision (main.tex 43e4baa97a38): correct as written; all reported numbers recomputed and matching; figure code matches caption. [Review](review-r2-appendixC-2026-11-23.md). No edits made.

- 2026-11-23, R2-D2. Reviewed all of Appendix C against Section 5 and Proposition 7(b). At core signals (1,1), equal power occurs at standardized redundant signal 0.731554. This gives the two standard-deviation thresholds 1.36695 and 0.68348 for raw redundant means 1 and 1/2. Corrected the strict monotonicity wording and distinguished the endpoint tie from strict preference for dropping. Verified the quoted powers, all 966 entries across the two precision grids at level 0.10, and all nine curves in the manuscript figure. Changes in red on pp. 54–55. The rebuilt paper has 59 pages and the sole undefined reference is the existing `sec:main-lessons` in the introduction notes. SHA-1 prefix `43e4baa97a38`.

- 2026-11-23, Luke. Independent review of R2-D2's Appendix B revision (main.tex 88d7f14e5c90): correct as written. Two wording nits (Example 5 "both core cutoffs"; footnote pointer in Proposition 6). RSW (2014) eq. (16) verified; Andrews-Soares (2.2)(vii) not verified (no copy). [Review](review-r2-appendixB-2026-11-23.md). No edits made.

- 2026-11-23, R2-D2. Reviewed all of Appendix B against Section 4 and Appendix A. Proposition 6 now spells out the triangular-array studentization proof and the zero-core-drift boundary. Corrected the attribution of (B-1), distinguishing Romano–Shaikh–Wolf (16) from the stronger Andrews–Soares (2.2)(vii) moment bound. Proposition 7 makes the sufficient core-face condition, core counts, and precision-weighted gate calibration explicit. Example 5 now shows that for each raw ordered alternative the level constraint at a matching null makes the core-only test uniquely most powerful up to null sets. It strictly beats the full rectangle everywhere, pinning down the scope of Proposition 3. Checked the two covariance examples, the crossing at 4/3, the matched null at 20 alternatives, and weighted-gate size and power in three variance designs. Also applied Luke’s Section 4 terminology correction. Project PDF 59 pages, Appendix B pp. 49–53, only the pre-existing introduction-note reference unresolved. Ready for Luke at SHA-1 `88d7f14e5c90`.

- 2026-11-23, Luke. Independent review of R2-D2's Appendix A revision (main.tex 9d3904f93288): correct as written; no gaps found in Lemma 12 or its applications (Theorem 4 necessity, Proposition 5, A.13, B.2). One main-text leftover of mine: Section 4 opening still says "modified experiment". [Review](review-r2-appendixA-2026-11-23.md). No edits made.

- 2026-11-23, R2-D2. Completed the Appendix A pass on Luke’s agreed file. Lemma 12 proves the common two-face improvement for any positive-definite covariance and the required null-size bound. For the latter, translating a disk on a facet with positive coordinate coefficient sweeps out a prism of Gaussian probability at least a constant times the displacement. This covers coordinate faces and the strictly positive normals of Theorem 4. A.12 contains both directions of Theorem 4 and the exact unordered rectangle criterion, including the one-core conditional rearrangement. A.13 proves Proposition 2, Remark 2, and Proposition 3. Reviewed A.1–A.11 and clarified the origin calibration, positivity of the gate's exchanged probability, and the bivariate slice argument including infinite endpoints. B.2 now proves strict improvement for the raw full rectangle after Example 5. Appendix C points to §3.5. Existing labels and Corollary 2 are retained. The project PDF is 58 pages with one pre-existing unresolved reference, `sec:main-lessons` in the introduction notes. The source is ready for Luke at SHA-1 `9d3904f93288`.

- 2026-11-23, R2-D2. Rebuilt the project-root PDF from source `9166161ba71b` and checked the printed changes, including the iff in Theorem 4 on p. 20. The PDF is 54 pages with the same two unresolved references. In the footnote after (3.6), continuity preserves admissibility when boundary alternatives are added. Example 3's tests have equal power there when the core drift is zero, so “the results below” should read “the admissibility conclusions below.”

- 2026-11-23, Luke. Applied R2-D2's three exposition edits from `review-luke-main-text-2026-11-23.md` in red: (1) the paragraph after Proposition 3 now explains the choice delta_j = t Omega_jc (likelihood ratio on the retained coordinates depends only on X_c); (2) one sentence after (3.6) identifies the unordered experiment as the Gaussian counterpart of identification redundancy, with R2-D2's theta^3 example and the continuity point in a footnote; (3) p. 21: the rectangle criterion is weaker than (3.7) with two or more cores and coincides with one core. Noted for the appendix pass: when Corollary 2 is folded into Proposition 2, the raw-covariance proposition should cite only the sufficient direction.

- 2026-11-23, R2-D2. Verified Luke’s red main-text statements against the agreed results and proofs. Flagged the choice of the other means in Proposition 3 and the boundary distinction between population signs and Gaussian local drifts. Verified the source builds to 53 pages with the two existing unresolved references. The project-root PDF predates the edits. [Review](review-luke-main-text-2026-11-23.md) and [reviewed PDF](main-reviewed-2026-11-23.pdf).

- 2026-11-23, Luke. At Ivan's request, implemented the main-text changes from `results-map-2026-11-23.pdf` in main.tex, in red (`\red{}`, new macro). New: Proposition 2 (full max test, ordered; end of 3.2), Remark 2 (ordered: some nice test inadmissible for every Omega; after Example 3), Proposition 3 (omitting a redundant coordinate; end of 3.5). Restated Theorem 4 as iff. Text: intro (necessity in general; one sentence on (A) and (C)), 3.1 preview, p.15 open-question passage, 3.3 open question narrowed, 3.5 opening, rectangles paragraph (iff with B), names in 3.5 and 4. Corollary 2 kept for now (folding it would break appendix references). Appendix untouched: TODO comments mark the three proofs to add. Compiles; only pre-existing undefined refs (sec:main-lessons, sec:modified-experiment in App. C).

- 2026-11-23, Luke. Revised `results-map-2026-11-23.pdf` after R2-D2's review. Agreed and adopted: the raw-scale three-dimensional rectangle after Example 5 is improvable (two excluded coordinate faces suffice; either may be a core face), so it is no longer listed as open; placements (A) end of 3.2 absorbing Corollary 2 with Theorem 2 kept, (B) remark after Theorem 4 with explicit quantifiers, (C) numbered statement at end of 3.5; added the Section 3.1 preview and the undefined `sec:modified-experiment` in Appendix C.

- 2026-11-23, Luke. Wrote `results-map-2026-11-23.{tex,pdf}` (2 pp.), at Ivan's request: every formal result in main.tex in paper order, marked stays / restate / new / text-only. Restate: Theorem 4 and Proposition 3 (both become iff). New: (A) full max test in the ordered experiment, (B) not every nice test admissible in the ordered experiment, (C) keep or drop. Also revised `results-summary-2026-11-23.pdf` per R2-D2's four changes. Placement decisions are Ivan's.

- 2026-11-23, Luke. Independent check of R2-D2's `one-core-unordered-rectangle-2026-11-23.md` and `omitting-a-redundant-coordinate-2026-11-23.md`: both correct. The full max test is now classified in every case (ordered: one core inadmissible, two or more cores admissible iff |R|=1; unordered: admissible iff |B|=0 with one core, |B|<=1 with two or more). Agreed with R2-D2's sharper keep-or-drop wording. Still open: the general-region analogue of Theorem 3 with one core and several redundant coordinates.

- 2026-11-23, R2-D2. Checked Luke’s remaining one-core unordered rectangle case. A negative correlation with even one redundant coordinate allows a nonrandomized conditional upper-tail test to gain at every alternative. [Proof and rectangle classification](one-core-unordered-rectangle-2026-11-23.md).

- 2026-11-23, R2-D2. Checked the keep-or-drop question separately. In the ordered Gaussian benchmark a full finite-cutoff rectangle has higher power at some alternatives than every level test ignoring a given redundant coordinate. [Proof](omitting-a-redundant-coordinate-2026-11-23.md).

- 2026-11-23, Luke. Independent check of R2-D2's `two-redundant-faces-ordered-2026-11-23.md`: correct. With two or more cores, the full finite-cutoff rectangle in the ordered experiment is admissible iff there is exactly one redundant coordinate; with two or more it is strictly dominated at every ordered alternative for any positive-definite Omega. Corroborated by Luke's Nov 12 LP (d=4, Omega=I: gains up to ~7.5 pp). Also acknowledged: item 6 of the iff proposal was wrong. Check saved as `check-luke-two-redundant-faces-2026-11-23.md`. Placement for Ivan.

- 2026-11-23, R2-D2. Reviewed Luke’s Theorem 4 edit plan. Flagged direct transfer of the strict dominator to the ordered alternative and supplied a [proof for the full finite-cutoff rectangle](two-redundant-faces-ordered-2026-11-23.md), including level on the full negative orthant. [Proposal response](proposal-iff-theorem4-2026-11-23.md).

- 2026-11-23, Luke. For R2-D2: `proposal-iff-theorem4-2026-11-23.md` lists every change to account for the if-and-only-if version of Theorem 4 (necessity proof from Federico's AI, checked by Luke and R2-D2): introduction, Section 3.1 preview, Section 3.5 (theorem restated, paragraph after it, 'remains open' deleted, naming), Section 4 naming, Appendix A.12 (add necessity proof; one-core remark). main.tex unchanged; awaiting agreement before editing.

- 2026-11-23, R2-D2. Verified Federico’s converse for Theorem 4(i), including randomized competition, the alternative directions on the boundary, and a common size bound on the negative orthant. [Independent check](theorem-4-converse-review-2026-11-23.md).

- 2026-11-23, Luke. Ivan and R2-D2 agreed to drop the weighted-ordering/gate discussion (the paper studies the two-way choice: ordering on standardized means vs identification redundancy alone; extra survey structure falls under Section 4.2's existing caveat). Appendix D: removed the numerical vectors, the Prop. covariance (c) passage and the admissibility caveat; equal-allocation paragraph now first; R2-D2's 45%-vs-15% paragraph closes the appendix. Section 3.5: removed the Appendix B.2 sentence; 'numerical illustration' -> parenthetical pointer. Appendix B lead-in updated. Never claim the survey's max test is admissible. Compile clean.

- 2026-11-23, Luke. Example 1 is now R2-D2's structured version (pasted by Ivan; duplicate removed by Ivan) with Ivan's ending (studentization can change the ranking; Section 3.5 returns with unequal allocation) replacing the closing question. In `\rev{}`.

- 2026-11-23, Luke. Implemented the survey sequence Ivan and R2-D2 agreed (`survey-example-sequence-2026-11-23.md`) in `main.tex`, main text in `\rev{}`: Section 2 lead-in sentence; Example 1 'Survey incentives' (equal allocation, ends with the studentization question); Example 2 'Three coordinates' (two-core Gaussian, then one-core = survey with equal allocation); one sentence after Theorem 2 (gate improves on the survey's three-group max test); new paragraph opening Section 3.5 (Dutz et al. shares 15/45/40, reversal, question of identification redundancy alone, known earnings-unit ordering -> Appendix B.2). Appendix D in black: reversal now points to Section 3.5; added the weighted-gate sentence (Prop. covariance (c) on X_j/sqrt(pi_j)) and that the modified experiment's admissibility results do not apply to the survey. Scratch compile clean.

- 2026-11-23, R2-D2. Checked the survey’s known order in earnings units against Appendix B.2 and Proposition 5(c). Drafted [three main-text passages](survey-example-sequence-2026-11-23.md) for Ivan’s proposed sequence.

- 2026-11-23, Luke. Applied R2-D2's correction to Appendix D in black (Ivan removed the blue; label now app:randomized-incentives): assumption P{R_i(z_1)=0}>0 added to the model; dollar example now 1/2 at $4,000 (either offer), 1/4 at $1,000 (high only), 1/4 never (respondent mean 4,000->3,000; bound 2,000->2,250; partial identification preserved); dropped 'provided such invitees exist'. Updated the three \ref{app:missing-data} (Examples 1-2, Appendix B lead-in) to the new label. Scratch compile clean.

- 2026-11-23, R2-D2. Reviewed the saved three-level Appendix D. State $P\{R_i(z_1)=0\}>0$ when specifying the model. To illustrate selective participation within that model, let half earn $4,000 and answer at either offer, a quarter earn $1,000 and answer only at the high offer, and a quarter never answer. The respondent mean falls from $4,000 to $3,000 while the lower bound rises from $2,000 to $2,250. The citations and cross-references resolve in a fresh scratch build.

- 2026-11-23, Luke. At Ivan's request: revised `appendixD-proposal-2026-11-23.pdf` with R2-D2's points (three incentive levels from the outset; ordering derivation b_high-b_low=E[Y*(R_high-R_low)]>=0; low-earner remark; R2-D2's Example 1 opening), then replaced the missing-data appendix in `main.tex` (Appendix D, label app:missing-data kept) with 'A Survey with Randomized Incentives', all in `\rev{}`. Added `dutz/etal:26` and Ivan's `manski:2003` to redundant.bib. Examples 1-2 NOT changed (Ivan: appendix only), so they still describe interview modes. Scratch compile clean, no undefined citations.

- 2026-11-23, R2-D2. Checked Luke’s pooled-incentive proposal and the published Dutz et al. paper. The high-group mean is sharp using pooled labels; retaining all five labels gives the 10% arm bound. The [citation plan](citation-plan.md#review-of-lukes-revision-using-the-three-pooled-groups) records the proof and the verified DiNardo et al. reference.

- 2026-11-23, Luke. Anchored the Appendix D proposal to Dutz et al. (2026, RES 93(5):3086-3132, doi 10.1093/restud/rdag003), verified from `references/selection-surveys.pdf`: card probabilities 0/1/5/7/10% with shares 40/30/15/7.5/7.5%; they pool into high/low/none (shares 0.15/0.45/0.40) and assume monotone participation (Sec. 4.4.1). Revised `appendixD-proposal-2026-11-23.pdf` (2 pp.): our three groups = their pooled groups; with their shares and h=(2,1.5,1), delta~(0.77,1.01,0.63), so the low-incentive (redundant) bound gives the strongest standardized signal; Example 2's one-core case uses equal group sizes as a counterfactual. No bib entry added yet; DiNardo et al. (2021) unverified. main.tex unchanged.

- 2026-11-23, R2-D2. Checked the published Dutz et al. article in `references/selection-surveys.pdf`. Added exact section and page references, the original and grouped allocation shares, the role of administrative earnings, and pasteable wording and BibTeX to the [citation plan](citation-plan.md).

- 2026-11-23, Luke. Revised `appendixD-proposal-2026-11-23.pdf` (same file, 2 pp.) on Ivan's decision: one-core running example with randomized cash offers for answering an earnings question (monotone response; b3<=b2<=b1; sharp [b1,inf); Omega=I_3; unequal allocation (0.1,0.1,0.8), h=(2,1.5,1) -> delta~(0.63,0.47,0.89) for Example 1; equal allocation for Example 2's one-core case, where Theorem 2's improvement carries over but admissibility claims need not). Two-core results stay a Gaussian benchmark. R2-D2's precedents (Dutz et al. 2026; DiNardo-Matsudaira-McCrary-Sanbonmatsu 2021) flagged as unverified. main.tex unchanged.

- 2026-11-23, R2-D2. In response to Luke’s verification of the survey limitation, derived a fixed-cost example with the full ordered Gaussian mean spaces. The [pricing note](pricing-example-max-order-2026-11-23.md) gives the identification argument, local constructions and a three-price main-text draft.

- 2026-11-23, R2-D2. Reviewed both pages of Luke’s Appendix D proposal. Verified the sharp set, local signals and nested-design qualification. The parallel survey excludes some Section 5 alternatives and admits a randomized improvement on the full max test. A proof and proposed wording are in the [review](review-appendixD-proposal-2026-11-23.md).

- 2026-11-23, Luke. At Ivan's request: `appendixD-proposal-2026-11-23.pdf` (2 pp., source .tex beside it). Proposed Appendix D on reduced-fare take-up (binary verification, common online stage, parallel follow-ups -> two cores, nested -> one core; sharp set [max(q1,q2),1] per R2-D2's construction; Omega=I_3; delta_j=sqrt(pi_j)h_j/s; numbers (1.46,1.46,2.07)) and draft Examples 1-2. Ivan reports Federico agreed to a new example. main.tex unchanged; current Examples 1-2 and Appendix D are placeholders until the new example is adopted.

- 2026-11-23, R2-D2. Added Luke’s reduced-fare take-up proposal and its sharp identified set to the [survey note](survey-followup-sharpness-2026-11-23.md). Suggested measuring individual enrollment as of a common date before the survey.

- 2026-11-23, R2-D2. Verified Luke’s sharpness concern for parallel follow-ups, sharpness for nested follow-ups, and a two-core repair based on a documented purchase. Checked how unequal allocation delivers the precision comparison. See the [survey note](survey-followup-sharpness-2026-11-23.md).

- 2026-11-23, Luke. At Ivan's request, Appendix D moment changed to m_j=(Y-theta)I{X=j}/pi_j with pi_j known by design, so mu_j=b_j-theta exactly (Federico's moment rescaled by a known constant: studentized tests, Omega=I_3 argument and delta_j unchanged; variance now [s_j^2+(1-pi_j)(b_j-theta)^2]/pi_j). Dropped the uncorrelated-reporting motivation (missing at random would identify theta); the ordering is now imposed directly on the observed bounds. Rejected alternative: Y I{X=j}-theta pi_j (same mean, but correlations -pi_j pi_k b_j b_k do not vanish locally). In `\rev{}`; compile clean except manski:2003.

- 2026-11-23, Luke. At Ivan's request (design agreed with R2-D2), in `\rev{}`: Example 1 rewritten as the survey-mode example (lean main-text version); Example 2 retitled 'Survey modes, continued' with the two states of knowledge and 'additionally imposes' the standardized ordering; Appendix D: R2-D2's paragraph on imposing the ordering of observed bounds (uncorrelated reporting only as motivation, would identify theta), and a new closing paragraph (mu_j, exact variance, disjoint-indicator argument for Omega=I_3, delta_j = sqrt(pi_j) h_j/s_j, numbers h=(2,2,1), s=(2,2,1/2) -> delta=(1,1,2)/sqrt3) replacing the g_j paragraph; Appendix B ex:ranking lead-in now points to Appendix D. Scratch compile clean except manski:2003 (missing bib entry).

- 2026-11-23, Luke. At Ivan's request, cleaned up Federico's new Appendix D (missing data example) in `main.tex`, in `\rev{}`: J -> d; P(.) -> P{.}; 1{.} -> I{.}; mathbb R -> mathbf R; mu_j(theta,P) defined componentwise; theta := E[Y*] without P (Y* latent); duplicated assumptions removed (source comment); label eq:missing-data-bound; title capitalized; corrected 'highest nonresponse rate' to 'some other mode has a nonresponse rate no larger' (and theta>0). Open: `manski:2003` not in redundant.bib (prints '?'); closing paragraph and Example 1 rewrite pending Ivan. Scratch compile clean otherwise.

- 2026-11-23, R2-D2. Responded in [the citation note](case-pakes-porter-mbakop-2026-11-23.md) and [the core-collection note](core-collection-vs-cdc-2026-11-23.md). Both identification examples verified. Distinguished the outcome-space construction of Luo–Ponomarev–Wang from the observable-support input in Chesher–Rosen. Recommended keeping (2.2) and both citations, with priority to Pakes–Porter if space is tight.

- 2026-11-23, Luke. For R2-D2 now: `case-pakes-porter-mbakop-2026-11-23.md` (handoff header; why cite Pakes-Porter and Mbakop in Section 2, caveats, keep-one recommendation) and `core-collection-vs-cdc-2026-11-23.md` (does a CDC depend on P; C(theta)). R2-D2 asked to check both readings and respond in the files.

- 2026-11-23, Luke. Saved at Ivan's request `core-collection-vs-cdc-2026-11-23.md`: does a core-determining class depend on P? (No: LPW Definition 2.1 compares sets of distributions over all mu, so the class depends on the model, theta and x only; redundancy in a general moment inequality model can depend on P, which (2.2) rules out by holding for every P.) Also records the C(theta) exchange with R2-D2. R2-D2 may respond in the file. Two items open for Ivan at the end of the note.

- 2026-11-23, Luke. At Ivan's request (Federico's suggestion), replaced the pasted core-collection remark in Section 2 with R2-D2's final version (Remark `rem:core-determining`: CDCs index events and may vary with the parameter and covariates; C is a fixed set of moment indices) and added R2-D2's Pakes-Porter (Sec. 4.1, eq. 15) and Mbakop (Sec. 2.4.1) sentences after the nonnegative-combination sentence. Locators checked in the local PDFs. In `\rev{}`; scratch compile clean.

- 2026-11-23, Luke. Applied R2-D2's two follow-ups on the mean-space figure: label "excluded in both" in the hatched quadrant of each panel; the paragraph after the figure now opens with R2-D2's sentence on the hatched region (kept a reference to the figure). In `\rev{}`.

- 2026-11-23, Luke. At Ivan's request, after agreeing the design with R2-D2 (R2-D2's correction adopted: the ordering also restricts the null), added a two-panel mean-space figure (ordered vs modified experiment) to Section 3.1 of `main.tex`: `figures/fig-mean-spaces.tex/.pdf` (TikZ, grayscale), caption, a referring paragraph, and a back-reference in 3.5, all in `\rev{}`. Scratch compile clean (figure on p. 9). Pre-edit backup outside Dropbox. With Ivan.

- 2026-11-20, R2-D2. Recorded Ivan’s supplied introduction structure, updated the first two paragraphs to his pasted text, and recorded the paragraph 3 handoff.

- 2026-11-20, R2-D2. Recorded Ivan’s working opening in the local introduction notes, with one grammatical correction to “adding redundant inequalities preserves admissibility.”

- 2026-11-20, Luke. Reviewed R2-D2's introduction structure (`introduction-structure-r2d2-2026-11-20.md`) at Ivan's request: `review-luke-introduction-structure-2026-11-20.md`. Ready with changes: pose the decision before the Luo-Wang example (115 redundant inequalities lie outside Theorem 1); reorder paragraph 3 as precision, studentization, then the ordering; state the classical benchmark and the 'alternatives a competitor must match' principle before paragraphs 4-6; add magnitude bounds and the precision result in paragraph 7; add Luo-Ponomarev-Wang and Theorem 4 to the contribution paragraph. No manuscript edits.

- 2026-11-20, R2-D2. Prepared an eight-paragraph introduction plan for Ivan to run by Luke. It opens with the decision after finding a core, pairs Theorems 1 and 2, and illustrates the local-power trade-off at fixed core signals. Ivan specified working inside this project’s folders. The proposal is awaiting review.

- 2026-11-16, R2-D2. Implemented all thirteen agreed reading revisions after Ivan’s GO. Added Section 2; reorganized Section 3 around the classical benchmark, two experiments, and Theorems 1 and 2; expanded (3.7), including Example 2; moved secondary results to Appendix A; propagated delta/lambda notation. Preserved numerical formulas, tables, figures, and results. Reset revision colors to this baseline and made appendix text black. Clean 46-page build, all 100 labels unique, all original labels retained, all pages visually checked. Baseline in `tmp/revision-2026-11-16/baseline/`; detailed handoff saved alongside this status. Shared R2 memory and the original tracker are outside this session’s writable scope, so this local handoff records the authoritative completion state. No external communication or R-code changes.

- 2026-11-12, R2-D2. Implemented the accepted Section 2.5 review changes in blue. Added transfer/nesting explanation, remaining classical-ray obstruction, combination interpretation, Theorem 4(ii) and counterexample, larger-null remark and first-moment link; removed the duplicate. A.12 entirely blue with complete combination proof and the former one-core proposition moved into Theorem 4. Added only a fixed-core power-envelope connection in Appendix C. PDF 44 pages clean and visually inspected; Sections 3 and 4 byte-identical to pre-edit source. Saved `handoff-r2d2-section25-review-revision-2026-11-12.md` and persistent memory for Ivan's computer change. No LP work or external communication.

- 2026-11-12, R2-D2. Read Luke's Section 2.5 review and addendum and checked his nonnegative-combination observation by minimizing core variance over the simplex. Correct: the common core average satisfies (2.7), allowing mixed negative correlations. Distinguished this covariance conclusion from attainability of the full alternative. Verified the orthant-null extension for nice tests and transfer of the established admissibility results; refined the excluded-ray explanation at zero-core boundary directions. Confirmed the duplicated closing paragraph. Saved `response-r2d2-luke-modified-experiment-2026-11-12.md`; manuscript unchanged, no numerical work or message to Luke.

- 2026-11-12, Luke. Addendum to `assessment-luke-section25-modified-experiment-2026-11-12.md` after Ivan's reactions: independence is not the benchmark and the restriction on Omega is the finding of 2.5 ("almost the classical result"); the modified experiment keeps the null Lambda_0. Withdrew the plain-condition advice; recorded why Omega enters (supporting rays into the region redundancy excludes), the case for the one-core counterexample in the main text, and an observation to check: nonnegative combinations of core moments satisfy (2.7) automatically.

- 2026-11-12, Luke. At Ivan's request, read the full draft (source 471e6b6abe9d) with attention to Section 2.5 and Appendix A.12; assessment in `assessment-luke-section25-modified-experiment-2026-11-12.md`. A.12 checked step by step: correct. Section 2.5: state that admissibility passes from the ordered to the modified experiment and not back; present the modified experiment as identification redundancy alone (the results hold with the null {mu <= 0}); move the correlation detail to the appendix; add the one-line power counterpart. Two errors: duplicated closing paragraph; the necessity-of-correlation sentence is shown only with one core. No manuscript edits.

- 2026-11-12, R2-D2. Implemented Ivan's agreed modified-experiment progression in blue. Section 2.5 states Theorem 4 under the core-average covariance condition; Appendix A.12 provides complete proofs, rectangle Proposition 3 and one-core Proposition 4. Original formal conjecture replaced by neutral open questions, with short scope edits in Sections 2.1, 3 and 4 and the introductory placeholder. The null remains exactly unchanged. PDF 42 pages, no warnings/unresolved references or box problems; changed pages visually inspected. Section 4 calculations and Appendices B–C source unchanged. Handoff `handoff-r2d2-modified-experiment-2026-11-12.md`. No numerical conjecture work or external communication.

- 2026-11-12, R2-D2. Saved `section-2-5-modified-experiment-plan-2026-11-12.md` at Ivan's request: self-contained story, subsection sequence, exact hypotheses and covariance condition, one main theorem, appendix allocation, file/label map, targeted edits, and verification steps. Supersedes the note's tentative two-main-theorem placement. No manuscript or standalone-proof-note edits.
- 2026-11-12, R2-D2. At Ivan's request prepared `enlarged-alternative-admissibility-r2d2-2026-11-12.tex/pdf`: original null unchanged; all nice tests admissible if a nonnegative core average has nonnegative covariance with every statistic; rectangles admissible if each redundant coordinate has a nonnegative core correlation, with one exception allowed for two or more cores. Complete proofs include equivalence of the covariance certificate and the all-normal directional condition, plus the exact one-core sign boundary and an explicit dominating halfspace when it fails. Seven pages compiled and visually inspected; example matrices checked. Pros/cons and scope stated; no necessity claim for two or more cores. Manuscript/bibliography untouched; no LP rerun or second-agent review.
- 2026-11-12, R2-D2. Implemented Ivan/Luke/R2 agreed small pass in blue. Verified .10 symmetric-gate recalibration by independent integrations; corrected chapter bibliography metadata and aligned figure labels. Source/PDF checked,38pagesclean. Saved handoff and reproducible Rcheck; no structuralchange.

- 2026-11-12, Luke. Recorded Ivan's decisions on the full-read exchange; no manuscript edits by agents.
- 2026-11-12, Luke. Replied to R2-D2's assessment (`reply-luke-full-read-2026-11-12.md`): conceded on sums (mean identity vs sample-level sum), regret tie wording, Appendix C placement, RSW; agreed scope for a small pre-print pass. Awaiting Ivan's go.
- 2026-11-12, R2-D2. Assessed Luke’s full read against current source and saved RSW text; response in `assessment-r2d2-luke-full-read-2026-11-12.md`. Accept cleanup; qualify exact-moment versus mean-sum claim, retain design-specific regret findings and Appendix C. No manuscript edits.

- 2026-11-12, Luke. Fresh read of the full draft at Ivan's request: `review-luke-full-read-2026-11-12.md`. Must-fix: dangling enlarged-alternative reference in 2.1, delta reused in the Theorem 2 proof, alpha 0.05 vs 0.10. Big picture: drift toward a 'keep' verdict, sum redundancy outside the order and positive-definite Omega, role of Appendix C.
- 2026-11-12, R2-D2. Completed authorized Appendix C rewrite and related equation relocation into B. Recompiled/rendered affected pages. Then reviewed Appendix B as requested: no mathematical error found in stated extensions/counterexamples; saved exposition recommendations without further edits.

- 2026-11-12, R2-D2. At Ivan’s request moved the precision analysis from Section 4.3 to Appendix C, retaining its equations/figure and label alias. Added a short blue closing pointer in Section 4; adjusted appendix opening and page breaks. Recompiled and checked the closing main-text page and Appendix C. Backup: /tmp/main-before-appendix-c.tex.

- 2026-11-12, R2-D2. At Ivan’s request added Section 4.2 regret discussion/table, after computing full-alternative maximum regrets in base R. Rectangle and gate tie despite strict dominance. Saved reproducible code, checks, and derivations; compiled and inspected PDF. No other manuscript text changed.

- 2026-11-12, R2-D2. At Ivan’s request added the Luo–Ponomarev–Wang sentence/citation in Section 4.1 and forthcoming REStud bibliography entry; removed his red note. PDF 35 pages, clean, affected pages checked.

- 2026-11-12, R2-D2. Added the authorized minimax-regret interpretation only in Section 4.1; all other manuscript text unchanged. Recompiled and checked page 17. Confirmed the relevance of Luo–Ponomarev–Wang Section 4.3.1 to Ivan’s red citation question; saved answer and citation plan. Ivan excludes randomized tests from practical reporting.

- 2026-11-12, R2-D2. Restructured Section4 at Ivan's request for one pedagogical argument continuing Section2. Put one-core gate comparison immediately after two cores; end4.2 with its failure on return to two cores; precision moved to4.3. New wording blue, existing calculations and figures retained (gate nowFigure2, precisionFigure3). All outside source unchanged. Compiled34pages and visually checked15–21. Handoff `handoff-r2d2-section4-flow-2026-11-12.md`; Ivan's voice approval pending.

- 2026-11-12, R2-D2. At Ivan's request, removed the raw-order layer from 3.1 and3.2; introduced it with the precision comparison in4.1. Dissolved old3.3, preserving its local example in Appendix B.2 and pointing4.1 directly to the covariance extension. New prose blue;34page PDF clean and affected pages visually checked. Section2 and AppendixA unchanged. Handoff: `handoff-r2d2-single-order-2026-11-12.md`.

- 2026-11-12, Luke. At Ivan's request, a hunch on Conjecture 1, recorded in `conjecture1-findings-luke-2026-11-12.md` with scripts in `conjecture1-lp/`. Ran the discretized dominance program proposed in the August notes: zero for the proven-admissible control; for the four-coordinate max test with two cores and two redundant coordinates (independence, alpha 0.10) it returns a candidate level-alpha test with gains up to 7.5 points and no violation found. Numerical evidence that the conjecture fails with two redundant coordinates; not a proof, not independently reproduced. Ivan stopped the work here. Also recorded his idea of leaving the alternative unrestricted. No manuscript change.

- 2026-11-12, R2-D2. At Ivan's explicit request, added the ordering rationale, admissibility-preservation argument and contrasting behavior of inadmissibility in blue in Sections 2.1 and 2.5; shortened the connection in 3.1 in blue. Preserved Ivan's new precision example; repaired the old dangling ex:bounds reference by defining its moments inline in blue. Compiled PDF and visually checked affected pages. Saved `enlarging-the-mean-space.md` for future supplement/referee work, distinguishing identification invariance, signal ranking, nested hypothesis enlargement, the maximal sign-implication model, and nonnested weighted-order extensions. No new theorem added and no Section 3.3 reorganization performed.

- 2026-11-11, R2-D2. Reviewed Luke's core-framing assessment. `reply-r2d2-core-framing-2026-11-11.md` verifies his independence benchmark and strengthens it to every nice region in the maximal sign-implication mean space, with a complete continuity/tilting proof and explicit smaller-model qualification. Recommends dissolving 3.3, moving the extension bridge to 4.1, and adding a standard-deviation-units clause in 2.1. Decisions pending Ivan; no manuscript edits or communication to Luke.

- 2026-11-11, Luke. At Ivan's request, independent assessment of the core framing and of Section 3.3, saved as `assessment-luke-core-framing-2026-11-11.md` (source 3f9c329a1bf9; no manuscript edits). The framing fits; Section 2.1 should say the means are in standard-deviation units; proposed benchmark under identification redundancy alone, for R2-D2 to check; recommends dissolving 3.3. Error found: `ex:bounds` is commented out, so the example in 3.3 prints "Example ??".

- 2026-11-11, R2-D2. Ivan requests empirically motivated examples instead of the artificial scalar-bounds illustration. Saved `empirical-example-candidates-2026-11-11.md`: preferred schooling candidate from Manski–Pepper; alternatives Lee's Job Corps bounds and Ponomarev–Semenova's binary-outcome illustration. Source checks and remaining local-experiment qualifications recorded; `citation-plan.md` updated. Ivan chooses the example; manuscript and bibliography untouched.

- 2026-11-11, R2-D2. Created `citation-plan.md` at Ivan’s request: living claim/source/placement guide covering all papers in the terminology note, precision/power precedents, current citations, and optional references. Checked bibliography and manuscript insertion status; recorded standing instruction to update when new reference work becomes available. Ivan continues editing; no manuscript or bibliography edits.

- 2026-11-11, R2-D2. Revised the entire Section 3 at Ivan’s request, incorporating his clarification that the conceptual discussion belongs immediately in 3.1. Identification sufficiency, invariant tests, and the additional standardized-order assumption now organize that subsection. Retained technical limits and the precision extension. All outside Section 3 unchanged; 35-page PDF clean and affected pages visually checked. Handoff saved; file returned to Ivan.

- 2026-11-11, R2-D2. Ivan authorized direct implementation of the agreed Section 2 exposition changes. Changed only the opening and experiment prose: conceptual question first, two implications of max ordering, brief forward pointer instead of early studentization discussion. Saved pre-edit source under /tmp; compiled main.pdf (35 pp., no undefined references or overfull lines) and visually checked affected pages 2–3. Section 3 and all subsequent material unchanged. File returned to Ivan.

- 2026-11-11, R2-D2. Checked Ivan’s newly added published Pakes–Porter PDF and Mbakop working paper. Updated the existing two-page terminology note and literature-review.md with published Pakes locators and Mbakop’s explicit Farkas-based redundancy elimination (Section 2.4.1, p. 28). Two pages recompiled and visually checked; main paper unchanged.

- 2026-11-11, R2-D2. Reread the definitions in Galichon–Henry, Chesher–Rosen, Luo–Wang and Luo–Ponomarev–Wang, plus Pakes–Porter’s implication example. Saved and visually checked `core-language-and-framing-2026-11-11.tex/pdf`, exactly two pages. Page 1 compares language/notation; page 2 frames the question using an identification-sufficient core and an additional standardized-order assumption. Core-determining does not generally mean minimum cardinality. Pakes–Porter checked in the accessible September 2021 author version because the publisher PDF is blocked. No manuscript edits or communication with Luke.

- 2026-11-10, Luke. Noted Ivan's project update (team is Federico and Ivan for now; already under Decisions, recorded by R2-D2). `main.tex` has changed since my last edit (now ebc2ff6962b8) and its title page already has Denis commented out; I re-read the file before any further work.

- 2026-11-10, Luke. Applied R2-D2's Section 4 follow-up: `luo/wang:18` author corrected to Ye Luo (my error); the literature paragraph now says "in the original units" for Ponomarev's sum restriction. Recompiled cleanly, 35 pp. Section 4 is with Ivan.

- 2026-11-10, R2-D2. Checked revised Section 4 (source 21fb68fd5cba, PDF 3dfe3f88ddd6) and accepted all six substantive corrections. Verified new bibliography entries against primary sources: Luo is Ye, not Yao; Hai Wang and Kirill Ponomarev are correct. Saved `followup-r2d2-section4-2026-11-10.md`, also requesting the words “in the original units” for Ponomarev’s sum restriction. Ready for Ivan’s edit after these small corrections; float placement can wait for production figures. No manuscript edits.

- 2026-11-10, Luke. Applied R2-D2's six Section 4 corrections: moment-selection condition (ratio below −1, not threshold-rate divergence); opening distinguishes the gate's uniform improvement; first lesson of 4.2 no longer requires both redundant signals near the core; rounded extrema and thresholds stated as approximations (9.04, 17.63, 1.37, 0.68); Figure 1 paragraph; literature paragraph citing Ponomarev (2022) and Luo and Wang (2018). Added those two entries to `redundant.bib`. Recompiled cleanly, 35 pp. Reply: `reply-luke-section4-2026-11-10.md`.

- 2026-11-10, R2-D2. Reviewed Section 4 at source 11479822403c / PDF 8f0ce7524a2e, inspected pp.16–21, and independently reproduced the numerical values in R. Saved `review-r2d2-section4-2026-11-10.md` and matching review-checks R/text files. Supports the architecture and global two-core extrema after analytical reductions. Requests precise GMS-rate wording, narrowing universal comparison language, correcting the one-core gain-region description, explicit approximate thresholds, tighter envelope interpretation, and literature credit. No manuscript edits; production simulations remain separate.

- 2026-11-10, Luke. Per Ivan: drafted Section 4 in main.tex from R2-D2's `section4-plan` (opening; 4.1 two cores with the costs of keeping and dropping and the precision comparison; 4.2 one core with core-only, rectangle and fixed gate), about 5.3 pages with three figures and one table. Figures are R2-D2's prototypes copied to `figures/sec4-pilot-*.pdf`, provisional. All plan numbers reproduced with separate code; a few additional numbers are flagged in the handoff. No finite-sample text; simulations not run. Sections 2–3 unchanged. Handoff: `handoff-luke-section4-2026-11-10.md`.

- 2026-11-10, R2-D2. Created `R-codes/README.md`: source map, staged production assignment, code organization, tests, complete local-run requirements, reproducibility and conditional Quest handoff. Checked R 4.4.2 and installed numerical/plotting/test packages; saved `R-codes/logs/environment-at-handoff.txt`. Created the source/output directory skeleton and linked the assignment from the earlier implementation brief and root README. This is preparation for the coding agent, not a production implementation or simulation run.

- 2026-11-10, R2-D2. Read all 32 pages of Addition and reconstructed the useful power analysis in `section4-plan.tex/pdf` (13 pages). Proposed three main figures: conditional costs of keeping/dropping with two cores; precision; one-core rectangle/core-only/gate comparison. Added an exact known-scale GMS diagnostic, finite-sample design, source audit, `section4-implementation-brief.md`, runnable prototypes and `section4-design.json` in `section4-plan-assets/`. Quadrature, null calibration, envelope/crossover identities and one-core dominance checked; all PDF pages inspected. No Monte Carlo simulations or manuscript edits. Proposal has not been reviewed by Luke or approved by Ivan.

- 2026-11-10, Luke. Per Ivan ("make the edit"): Section 2.1 now points to Section 3.3 with R2-D2's sentence, replacing "An ordering of the population moments delivers (2.1) only under conditions that we discuss there." Recompiled cleanly, 30 pp. All items in R2-D2's scale review are now applied.

- 2026-11-10, Luke. Applied R2-D2's review of the scale-focused Section 3 (3.3 only): g > 0 and normal P_n in Example 2; sharper wording on standardization; 'geometric arguments ... Proposition 4(a)'; explicit statement that both max tests stay admissible under independence and the raw order for any standard deviations, covering the Section 4 precision comparison. Reproduced R2-D2's powers 0.4577 and 0.4833. Section 2.1 pointer sentence left for Ivan. Recompiled cleanly, 30 pp. Reply: `reply-luke-section3-scale-2026-11-10.md`.

- 2026-11-10, R2-D2. Reviewed Luke’s scale-focused revision (source 97d8f950b5e2, PDF 4ee885448e0f). Local example, marginal-test comparison, invariance, and standardized-order implication verified. Saved `review-r2d2-section3-scale-2026-11-10.md`; recommends small wording corrections and an explicit independent raw-order connection to Section 4 while keeping the covariance proposition in the appendix. Updated the discussion record.

- 2026-11-10, Luke. Per Ivan: revised Section 3 following the closing brief in `scale-moments-discussion.md` (invariance before (3.3); redundancy for identification versus the order of violations; local Example 2; standardized order (3.9) as the maintained assumption; closing link to power) and added the fixed-partition paragraph in Section 2.1. Propositions 3–4 and the scale counterexample moved to Appendix B on R2-D2's recommendation. Recompiled cleanly, 30 pp. Handoff: `handoff-luke-section3-scale-2026-11-10.md`.

- 2026-11-10, R2-D2. At Ivan’s request, saved the introduction’s central message in `introduction-central-message-2026-11-10.md` and added a concrete rewrite brief to `scale-moments-discussion.md`. Ready for Ivan’s handoff to Luke. Moving both formal propositions to the appendix is labeled R2’s editorial recommendation; fixed-partition clarification is explicitly agreed.

- 2026-11-10, R2-D2. Opened `scale-moments-discussion.md` at Ivan’s request to record his proposed reframing of Section 3.3 and the ensuing discussion. He likes the exposition and wants a stronger positive motivation from scale-invariant inference. R2 distinguishes identification redundancy from standardized signal ordering; discussion remains open. Confirmed the current source has corrected h to delta in (3.7).

- 2026-11-10, Luke. Per Ivan: edited Section 2 opening (line 121); CIV bib entry now year 2026 only, DOI without the doi.org/ prefix. Recompiled cleanly.
- 2026-11-10, Luke. Fixed the missed h-to-delta replacement in (3.7) per R2-D2's follow-up; recompiled cleanly (source 1789eb934e8a, PDF 5687ec2beded). Section 3 ready for Ivan.
- 2026-11-09 Chicago evening (November 10 UTC), R2-D2. Follow-up on Luke’s November 10 reply completed after BB-8’s second Go. All five substantive revisions accepted. Found residual h_r/h_c in equation (3.7), confirmed in PDF p. 13; these must be delta_r/delta_c. Saved `followup-r2d2-section3-2026-11-09.md`. Section 3 is ready for Ivan after that correction and recompile; Section 2 opening consistency and CIV bibliography year remain for Ivan.

- 2026-11-10, Luke. Revised Section 3 per R2-D2's review: Gaussian-limit wording and attainable-means qualification, scale of the order, GMS scope (diverging threshold; non-drifting tuning parameters), closing paragraph, ε range, explanation moved before Prop. 4, drift renamed δ, redundancy scope in 3.1, Appendix B retitled, Section 2 double period fixed. Reply: `reply-luke-section3-2026-11-10.md`.
- 2026-11-09, R2-D2. Reviewed Luke’s Section 3 and Appendix B after BB-8 relayed Ivan’s Go. Propositions 3–4 and both covariance examples checked. Saved `review-r2d2-section3-2026-11-09.md`, requesting precise Gaussian-limit/attainability scope, invariance under changes of variables, diverging-threshold GMS scope, independence for the gate, and the epsilon range after Example 2. The review also resolves the handoff’s technical questions and flags duplicate CIV year fields. Manuscript editing remains with Ivan/Luke; no consensus claimed.

- 2026-11-09, Luke. Drafted Section 3 in main.tex in Canay–Shaikh notation (model, population redundancy as order, local limit Prop. 3, GMS limit, units of measurement with Prop. 4 and two examples) and Appendix B proofs. Recompiled cleanly. Handoff with R2-D2 checklist and eight points for Ivan: `handoff-luke-section3-2026-11-09.md`.
- 2026-11-09, R2-D2. Recorded Ivan’s handoff. Luke is drafting Section 3. Ivan will ask BB-8 to give R2-D2 the Go when it is complete. Review comments must be saved as Markdown in this folder for Luke.

- 2026-11-09, Luke. 2.5 opening now says 'no, in the sense that admissibility does not require us to discard redundant
  inequalities' (R2-D2's concern, Ivan's 'no' kept); removed the repeated 'not only whether ... but also how' sentence. Recompiled.
- 2026-11-09, Luke. Section 2.5 now opens with the admissibility answer to the title question (dropping is always safe, never
  required; every improvement we construct still uses the redundant coordinates). Recompiled.
- 2026-11-09, Luke. Section 2.5 Main Lessons: added R2-D2's two paragraphs (unrestricted benchmark via Lehmann-Romano; source of
  the violation), with two small edits, before Ivan's power paragraph (already moved there from 2.4); 'case (a)' now points
  to Section 2.4. Recompiled.
- 2026-11-09, Luke. At Ivan's request ('which core supplies the violation'): clause after the Lemma 2 example, clause in the
  one-core opening, R2-D2's closing sentences for the 2.4 gate passage. (Ivan wrote the new opening of 2.2.) Recompiled.
- 2026-11-09, Luke. At Ivan's request (with R2-D2's suggestion): support function, finite normals and feasible normals are
  now Definition 2 [Finite and feasible normals], followed by the finite-vs-feasible distinction, two examples, and the
  pointer to Lemma 3; feasible support is now Definition 3. Recompiled.
- 2026-11-09, Luke. At Ivan's request (R2-D2's hierarchy): 'feasible support plus one halfspace' and 'a gate improves on
  the rectangle' are now Theorems 1 and 2 (labels thm:one-extra, thm:gate); the two-moment characterization is Theorem 3.
  All references and appendix headings updated; recompiled, 20 pp., no undefined references.
- 2026-11-06, Luke. Applied R2-D2's three adjustments: Proposition 4 lead-in no longer implies an impossibility; 'stronger'
  instead of 'easier to check' before Proposition 2; second 'Lemma 2 returns' removed. Recompiled.
- 2026-11-06, Luke. At Ivan's request, a pass over Section 2 on R2-D2's mechanism-vs-scope principle: Proposition 2 lead-in
  now states its purpose; scope paragraph after Proposition 3 (the redundant cutoff is the one free halfspace); lead-in to
  Proposition 4 ties to Lemma 2; scope paragraph after Theorem 1 (sufficient becomes exact); necessity description
  shortened, with the open multi-redundant case noted. Recompiled, 20 pp.
- 2026-11-06, Luke. At Ivan's request: cleaned up the Proposition 1 block in main.tex after a paste (duplicate
  proposition and placeholder removed); it now reads: Proposition 1, Ivan's intuition paragraph, the new paragraph on why
  feasible support is restrictive, then Proposition 2. Recompiled, 19 pp.
- 2026-11-06, Luke. Housekeeping after R2-D2's third review: removed the stale 'not ported yet' comment in main.tex
  (Appendix A header) and updated the Section 2 workstream row. No visible change to the manuscript.
- 2026-11-06, Luke. At Ivan's request (a common thread, used sparingly): three short connective passages in 2.2 that
  return to the X3 question (Proposition 1's limit for the max test; after Corollary 1; after Corollary 3) and one
  duplicate removed after Corollary 2. Recompiled, 19 pp.
- 2026-11-06, Luke. Applied R2-D2's second Section 2 review (q direction, dual-cone wording, gate qualifier and
  decomposition moved to A.10, 'several familiar tests', repeated transition removed) and ported the Theorem 1 proof into
  Appendix A.11. main.pdf now 19 pp.
- 2026-11-06, R2-D2. Re-read Section 2, the included proofs and the bivariate source proof. Saved the second review. The literal q = e₁ − e₃ example needs a direction-only interpretation, and the gate comparison needs the other coordinates held fixed. Earlier corrections remain implemented. Numerical illustration reproduced and current PDF inspected. Manuscript unchanged.

- 2026-11-06, Luke. At Ivan's request: after Proposition 2, the converse counterexample is replaced by a pointer to the
  symmetric gate in 2.4; 2.4 now states its feasible facet normals and the infeasible finite normal (1,1,2); the
  back-reference after Conjecture 1 points to 2.4. (Display split and Proposition 1 paragraph were already in Ivan's edits.)
- 2026-11-05, Luke. At Ivan's request: replaced the Section 2 opening with Ivan's paragraph (goal, two questions,
  why the normal model, roadmap); 2.1 now opens with "Suppose we observe"; three-observation example moved into 2.1
  after the hypotheses; 2.4 back-reference updated. Recompiled.
- 2026-11-05, R2-D2. Verified Luke’s 20:04 corrections in the manuscript and PDF text. Review points resolved. Section 2 is ready for Ivan’s edit, with Appendix A.11 still awaiting the bivariate proof. Verification recorded in the review addendum.

- 2026-11-05, Luke. Applied R2-D2's Section 2 review (three corrections plus smaller fixes) to `main.tex`; recompiled.
- 2026-11-05, R2-D2. Checked Section 2 and the included proofs against the technical notes and reproduced the symmetric-gate illustration. Saved the independent review for Ivan.

- 2026-11-05, Luke. At Ivan's request: drafted Section 2 (2.1–2.4) in `main.tex` and ported the short proofs into
  Appendix A (Theorem 1 proof pending). Compiled `main.pdf` (13 pp., plainnat in place of ecta). Handoff for R2-D2 saved.
- 2026-11-05, R2-D2. Saved Ivan’s cross-device handoff for the Section 2 review in project memory.

- 2026-11-05, Luke. At Ivan's request: moved `paper/Addition.pdf` to `supporting/Addition.pdf` (snapshot of Fede's draft as of
  Nov 5; live source in Overleaf `Notes-Fede/paper/`) and removed the empty `paper/` folder. Updated README and the
  appendix pointer in `paper-structure` (recompiled). Dated records keep their original paths.
- 2026-11-05, Luke. At Ivan's request: created `main.tex` (Hellinger-iOS preamble and title-page format; title, three
  authors, agreed section headings with labels, empty text) and `redundant.bib` (35 entries copied from Ivan's Bib folder,
  plus a commented list of references still to add) at the root of i-relevant. Compiles; ecta.bst not checked here.
- 2026-11-05, Luke. Recorded Ivan's two-phase manuscript workflow (local draft in the repo, then Overleaf with a read-only
  Dropbox-synced copy for the agents), the no-GitHub-link decision, and the title candidates.
- 2026-11-05, R2-D2. Signed off on Luke’s post-literature revision. Distinguished the one-gate argument from the symmetric-gate numerical illustration, clarified the theorem scope and cutoff notation, and verified the three-page PDF.

- 2026-11-05, Luke. At Ivan's request: recorded the structure and literature debate; revised `paper-structure` (intro
  credits and narrowed local-power novelty, referee answer with the gate argument in 2.4, Ponomarev and precision
  exhibit in 4.1, Luo–Wang narrow citation, title candidates). Now 3 pages. R2-D2 to check.
- 2026-11-05, R2-D2. Traced the Handbook references, author bibliographies, and forward citations. Ponomarev’s 2022 dissertation compares two vs. three max statistics with a dependent third coordinate. Verified Luo–Wang’s 2018 bootstrap and local ray from Ivan’s PDF. Recorded Cox–Shi’s representation invariance and the precision discussions by CCK and Molinari.

- 2026-11-05, R2-D2. Incorporated the earlier core-class readings and the separate Romano–Shaikh–Wolf Gaussian benchmark into the running review, with source locators. The 2018 Luo–Wang power finding is marked abstract-only.

- 2026-11-05, R2-D2. Started the running literature review. Recommend citing Ponomarev and Semenova (2025), Remark 2 and equation (3.22), in the introduction for the precision advantage of a redundant population bound. See `literature-review.md`.

- 2026-11-05, R2-D2. Implemented Luke’s three required revisions and preserved the scope of his survival result. Luke authorized sign-off on those terms. Rebuilt and visually verified both pages of the agreed outline.

- 2026-11-05, Luke. Reviewed R2-D2's paper-structure draft: ready with fixes. All source pointers verified. Proposed:
  positive statement in Section 3, a home for Federico's two-moment results (Section 4 by number of cores), one
  coordinate system for the Section 3 example.
- 2026-11-05, R2-D2. Saved and visually checked the two-page paper structure for Luke’s review. Consensus pending.

- 2026-11-05, R2-D2. At Ivan’s request, prepared the two-page literature note `core-determining-classes.tex/pdf` with a research sub-agent. Chesher–Rosen (2020), pp. 104–105, and Luo–Ponomarev–Wang (2026), p. 25, explicitly discuss inference from redundant moments. The power figure remains pending.

- 2026-11-05, Luke. Recorded R2-D2's relayed Round 1 reply; Round 2 accepts its qualification of Table 2 and its
  two-sided keep/drop figure. Aligned; two questions for Ivan.
- 2026-11-05, Luke. Debate Round 1 after reading R2-D2's first read: agreement on the main assessment; Luke concedes the
  equal-variance point (raised as a story question for Ivan) and one overstatement on frequency; adopts R2-D2's
  worst-case envelope; proposes a common position. Open for Ivan: notion of redundancy; who produces the L1/L2 exhibit.
- 2026-11-05, Luke. Saved independent first read before opening R2-D2's. Finding: admissibility supports
  "retaining is not in itself a mistake"; "typically costs little" is unsupported. The only magnitudes are
  bivariate (Table 2: losses up to 13.4 points against 37.9). No three-inequality magnitudes exist; smallest missing
  comparison is the closed-form two-core max-test comparison (L1 vs L2).
- 2026-11-05, R2-D2. Saved `review-r2d2-first-read-2026-11-05.md` before consulting Luke’s assessment. The November draft gives the three-inequality power functions but quantifies only a two-inequality design.

- 2026-11-05, R2-D2. Ivan wants to test whether retaining a redundant inequality typically costs little power. Wrote the narrowed first-read assignment for Luke and R2-D2. Luke’s receipt is pending.

- 2026-11-05, Luke. Reorganization implemented per the revised plan; `README.md` at the root. No deletions.
  `supporting/i-relevant-notes.tex` compiles with its figure. Ivan to commit.
- 2026-11-05, Luke. Revised reorg plan after R2-D2's review: `short_vs_long.png` stays with `i-relevant-notes.tex`
  (Luke's dependency check had missed it); memos filed by authorship; `master-structure` kept through the reads;
  `Addition-2.pdf` archived. Added R2-D2's weighting question to the kickoff brief.
- 2026-11-05, R2-D2 (relayed by Ivan). Agreed the workflow; approved the reorganization with one correction;
  recommendations on the open decisions; added the question on which local alternatives are counted and how weighted.
- 2026-11-05, Luke. Created this folder, this file, `reorg-plan-2026-11-05.md`, and `kickoff-2026-11-05.md`.
