# i-relevant: shared status (Luke and R2-D2)

**Next actor:** Ivan: commit the reorganization, then GO for Step 1 (independent reads) in `kickoff-2026-11-05.md`.
R2-D2: update paths in its dossier (see `README.md`).
**Last updated:** 2026-11-05 13:25 Chicago, by Luke.

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
| 2 | Story | plan agreed (Luke, R2-D2) | Ivan GO, then both independently |
| 3 | Literature list (papers to download and review) | plan agreed | Luke drafts, R2-D2 audits |
| 4 | Paper structure | plan agreed | both independently, with Story |

## Open questions for Ivan

- Where is the live LaTeX source of `Addition.pdf`, and should a copy live in `paper/`?

## Log (newest first)

- 2026-11-05, Luke. Reorganization implemented per the revised plan; `README.md` at the root. No deletions.
  `supporting/i-relevant-notes.tex` compiles with its figure. Ivan to commit.
- 2026-11-05, Luke. Revised reorg plan after R2-D2's review: `short_vs_long.png` stays with `i-relevant-notes.tex`
  (Luke's dependency check had missed it); memos filed by authorship; `master-structure` kept through the reads;
  `Addition-2.pdf` archived. Added R2-D2's weighting question to the kickoff brief.
- 2026-11-05, R2-D2 (relayed by Ivan). Agreed the workflow; approved the reorganization with one correction;
  recommendations on the open decisions; added the question on which local alternatives are counted and how weighted.
- 2026-11-05, Luke. Created this folder, this file, `reorg-plan-2026-11-05.md`, and `kickoff-2026-11-05.md`.
