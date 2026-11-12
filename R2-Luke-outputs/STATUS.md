# i-relevant: shared status (Luke and R2-D2)

**Next step:** Ivan reads the blue revision: Section 2.5 (pages 12–13) and Appendix A.12 (pages 32–35). The modified experiment and its results are integrated; `main.pdf` is 42 pages and compiles cleanly. Handoff: `handoff-r2d2-modified-experiment-2026-11-12.md`. Section 4 remains the original ordered experiment; its calculations and Appendices B–C are unchanged. Production figures remain separate. Original-conjecture numerical work remains paused.
**Last updated:** 2026-11-12, by R2-D2 (modified experiment implemented in blue).

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
| 5 | Section 2 manuscript draft | Section 2.5 revised in blue; Theorem 4 and Appendix A.12 added; compiled and checked | Ivan reads the revision |
| 6 | Section 3 manuscript draft | revised after the scale discussion; R2-D2's review corrections applied; compiled | Ivan reads |
| 7 | Section 4 architecture and computations | proposed; standalone 13-page plan, four checked deterministic prototypes, coding brief and configuration saved | Ivan reviews, then assigns production computations; Luke drafts from the confirmed outputs |
| 8 | Section 4 manuscript draft | first draft reviewed by R2-D2; corrections applied; compiled; figures provisional | Ivan edits |
| 8 | Section 4 manuscript review | first review complete; numerical claims checked; targeted prose/attribution corrections requested | Luke, then Ivan |
| 9 | Enlarged-alternative admissibility under dependence | implemented in blue in Section 2.5 and Appendix A.12; 42-page PDF clean | Ivan reads; original LP remains paused |

## Open questions for Ivan

- `.gitignore` now lists `R2-Luke-outputs/` (added by Luke), so already-committed files there stay tracked and new ones do not.
  Either remove the line, or keep it and run `git rm -r --cached R2-Luke-outputs`. Ivan's call.


## Log (newest first)

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
