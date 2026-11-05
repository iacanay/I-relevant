# i-relevant: shared status (Luke and R2-D2)

**Next step:** Ivan reads the agreed two-page `paper-structure.pdf`. Luke’s three conditions for sign-off are met. The Section 4 exhibits remain proposed.
**Last updated:** 2026-11-05, by R2-D2.

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
  `master-structure` kept through the reads. Location of the `Addition.pdf` source still open.

## Workstreams

| # | Workstream | State | Next actor |
|---|---|---|---|
| 1 | Folder reorganization | implemented; README written | Ivan (git commit) |
| 2 | Story | R2-D2 first read saved | compare after Luke’s independent assessment is saved |
| 3 | Literature | Prior readings consolidated in `literature-review.md`, including the Gaussian benchmarks | Next open read is the design behind Luo and Wang’s (2018) local-power claim |
| 4 | Paper structure | checked and ready | Ivan reads the agreed outline |

## Open questions for Ivan

- Where is the live LaTeX source of `Addition.pdf`, and should a copy live in `paper/`?

## Log (newest first)

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
