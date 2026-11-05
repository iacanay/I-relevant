# Folder reorganization plan (for Ivan's approval)

From: Luke, Research. Date: 2026-11-05 13:15 Chicago.
Status: **implemented** 2026-11-05 13:25 after Ivan's GO; revised after R2-D2's review (round 1). Nothing deleted.
`i-relevant-notes.tex` compiled cleanly from `supporting/` with its figure (scratch copy outside Dropbox).
One deviation: the emptied `obsolete/` and `files2/` folders sit in `archive/` as `obsolete-emptied` and
`files2-emptied`, since removing a folder needs delete permission.

Changes from the first version: (i) `short_vs_long.png` now moves with `i-relevant-notes.tex`, which loads it
(R2-D2 caught this; my dependency check missed `\includegraphics[...]{...}` with options, and the claim that no file
loads another was wrong). (ii) Old memos are filed by authorship. (iii) `master-structure` stays in `notes/`
through the independent reads; the README points to it as the August research map. (iv) `Addition-2.pdf` is
archived as the August snapshot.

## Proposed layout

```
i-relevant/                  git repo (origin github.com/iacanay/I-relevant)
├── README.md                new: one-screen orientation (what is where, which files are current)
├── paper/                   the Bugni–Canay draft
├── notes/                   current authority notes
├── supporting/              correct results and proofs that are no longer the authority
├── memos/                   June–August markdown memos (history and audit trail)
├── reviews/                 external audits (the current Reviews/ folder)
├── figures/                 figures and figure code
├── references/              literature (Lehmann–Romano Ch. 6 now; more to come)
├── archive/                 the current obsolete/ folder plus newly superseded items
├── R2-Luke-outputs/         every .md produced by Luke or R2-D2 from now on
└── tmp/                     unchanged (render cache, already gitignored)
```

Mechanics. Each `.tex` moves together with its `.pdf` and its LaTeX sidecars (`.aux`, `.log`, `.fls`,
`.fdb_latexmk`, `.synctex.gz`, `.out`), so every note still compiles where it lands. Rechecked with a correct
pattern: the only file dependency is `i-relevant-notes.tex` line 266, `\includegraphics[width=\textwidth]{short_vs_long.png}`;
the two stay together in `supporting/`. Other mentions of file names in the notes are text, not loads.
Moves use plain `mv -n` (never overwriting). I will not run git commands: from this session they can leave
lock files behind. Your next `git add -A && git commit` records the moves as renames, together with the
uncommitted changes already in the working tree (the June files moved to `obsolete/` after the first commit).

## File map

Classes follow `master-structure.pdf` (Aug 28) except where noted.

| Destination | Files | Reason |
|---|---|---|
| `paper/` | `Addition.pdf` | Current draft, "On the irrelevance of irrelevant moment conditions" (32 pp., compiled Nov 5). |
| `notes/` | `general-case-lessons`, `general-case`, `three-dimensional-case`, `master-structure`, `limit-moment-selection`, `necessity-feasible-normal-general-omega` (each .tex/.pdf) | Current authority (master-structure H2–H6) plus `general-case-lessons` (Aug 30, note for Fede), which postdates the map. |
| `supporting/` | `i-relevant-notes`, `Theorem2-rectanglev2`, `assessment-beyond-rectangles`, `counter-example-june27`, `feasible-normal-transfer`, `necessity-feasible-normal-clean`, `lemma3-alt`, `theorem1-lr-proof-updatedV2`, `admissibility-map-plan`, `extension-plan` (each .tex/.pdf); `files2/short-test-admissibility.tex`; `short_vs_long.png` (loaded by `i-relevant-notes.tex`) | Master-structure class "maybe": correct or useful, superseded as authority. |
| `memos/` | `admissibility-compact-v3.md`, `reactions-june27.md`, `Fables-comments.md` | Pre-November memos of other or uncertain authorship (the compact memo comes from an earlier chat session; `Fables-comments` assesses Fabel's comments). |
| `R2-Luke-outputs/archive/` | `handoff-Aug26.md` | Earlier R2-D2 output (August 26 proof audit), filed by authorship. |
| `reviews/` | contents of `Reviews/` (4 .tex/.pdf pairs, including `conjecture12-attempt`, which is not in the map) | Lowercase for consistency; `Reviews/` is untracked in git, so the rename is clean. |
| `figures/` | `long_test_hull_gated_diagram.png`, `figure-1.R`; README links to `supporting/short_vs_long.png` | Expository assets. |
| `references/` | unchanged | Literature will be added here. |
| `archive/` | everything now in `obsolete/` (folder renamed); `Addition-2.pdf`; `i-relevant-notes (Ivan Canay's conflicted copy 2026-06-25).log`; the emptied `files2/` folder | Superseded material. `Addition-2.pdf` (Aug 28, 29 pp.) is an earlier compile of the same draft. |
| root | `.gitignore`, new `README.md` (current paths; points to `notes/master-structure.pdf` as the August research map and supersession record) | |

After the move the root holds only `README.md`, `.gitignore`, and the folders above.

## What goes stale after the move

- Paths inside `master-structure.tex/pdf`. It stays in `notes/` through the independent reads, since it records
  which results supersede which and why; the README gives current paths. Whether to update or retire it is
  decided after the reads.
- Paths in R2-D2's dossier (`Codex/R2-D2/context/projects/i-relevant.md`). R2-D2 updates its own files.

## Decisions

1. `Addition-2.pdf` to `archive/` as the August snapshot; `Addition.pdf` is the source for the setting,
   simulations, and local-power analysis. (R2-D2's recommendation; Luke agrees.)
2. Source of `Addition.pdf`: open, Ivan's call. PDFs are organized now; `paper/` is ready for the source.
3. Old memos by authorship, as in the table. (R2-D2's recommendation; Luke agrees.)
4. Ivan gave GO on 2026-11-05; moves done.
