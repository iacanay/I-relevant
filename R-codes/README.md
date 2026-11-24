# Section 4 numerical production in R

Prepared for Ivan Canay, November 10, 2026. This is the entry point and assignment for the coding agent, whether Claude Code or a local Codex chat.

## The ask

Implement, validate, and **run** the numerical work for Section 4 in readable R. Ivan will inspect the source and rerun selected calculations himself. Deliver organized code, tested computations, figures, tables, and a concise account of what actually ran. Do not stop at writing scripts, a proposed workflow, or smoke tests when the remaining work can reasonably run locally.

The scientific question is how much power can be gained or lost by keeping identification-redundant inequalities. Use a central three-coordinate model, with either two cores and one redundant coordinate or one core and two redundant coordinates. The allocation is fixed within each maintained model. Do not engineer the outputs to favor keeping or dropping.

**R is the production language.** Python prototypes are independent reference calculations, not a production dependency. Federico may independently check selected results in Matlab; no Matlab implementation is requested here. The intended manuscript section is 5–6 pages including three main figures. This folder supplies computations, not manuscript prose.

**Current status (November 13, 2026):** production R code, validation tests, exact Gaussian results, figures, smoke tests, benchmark and the full local finite-sample production run are complete. See **[How to run (verified)](#how-to-run-verified)** below and the research handoff [`../R2-Luke-outputs/handoff-section4-R-production.md`](../R2-Luke-outputs/handoff-section4-R-production.md). The original assignment text follows unchanged except for this paragraph, the file-layout note, and the appended run instructions.

## Source map and reading order

All paths below are relative to the project root, the parent of this folder. Read the text sources directly; the PDFs are useful for the intended exhibits.

| Source | What to use it for |
|---|---|
| `R-codes/README.md` | Current execution assignment, R organization, local-run and completion requirements. |
| `R2-Luke-outputs/section4-plan.tex` and `.pdf` | Mathematical specification and architecture. Page 1: proposed section and length; pages 2–3: model, exact max powers, crossovers and envelopes; pages 4–7: three main figures and gate formulas; page 8: extensions; pages 9–10: simulations and exact known-scale GMS; page 11: validation; pages 12–13: source audit and scientific scope. Equations P1–P8 are the computational specification. |
| `R2-Luke-outputs/section4-implementation-brief.md` | Detailed staged tasks, tolerances, finite-sample rules, output requirements, and limits on claims. Read together with this README; this README supersedes its language-neutral folder layout and suggestion to rerun the Python generator. |
| `R2-Luke-outputs/section4-plan-assets/section4-design.json` | Proposed numerical settings: levels, grids, scales, scenarios, replication targets, and tolerances. Translate to one readable R configuration or read this JSON; document any changes and avoid two independently maintained configurations. |
| `R2-Luke-outputs/section4-plan-assets/pilot-anchors.csv` | Independent numerical reference values for max and gate powers. Reproduce in R. |
| `R2-Luke-outputs/section4-plan-assets/pilot-checks.json` | Critical values, gate calibration, quadrature checks, envelope-grid summaries, and exact GMS reference. Some summaries use the coarse prototype grid; compare like with like. |
| `R2-Luke-outputs/section4-plan-assets/build_pilots.py` | Transparent independent reference implementation. Inspect if needed to resolve a discrepancy; derive the R implementation from the formulas rather than translating unchecked assumptions. Do not overwrite or rerun it in its original folder. |
| `R2-Luke-outputs/section4-plan-assets/pilot-*.pdf` | Four prototype figures: envelopes, precision, gate, and selection. Reproduce the design, then improve labels and rendering for publication. |
| `main.tex`, Sections 2–3 and Appendix B | Current theory, sign conventions, and the independent raw-order extension. Read-only. Luke may concurrently draft Section 4; his provisional prose does not replace the computational specification. |
| `notes/general-case.tex`, `notes/three-dimensional-case.tex`, `notes/limit-moment-selection.tex` | Supporting theorem/proof and limit-selection details if a mathematical question arises. |
| `R2-Luke-outputs/scale-moments-discussion.md`, `introduction-central-message-2026-11-10.md` | Interpretation: raw identification redundancy versus standardized ordering; power depends on unknown alternative directions. |

**Do not use `supporting/Addition.pdf` as an implementation source.** Its useful material was reconstructed and audited in the plan. Its old Table 2 is not a verified target for the three-coordinate exercise. Existing `figures/figure-1.R` is a density-plot script, not a production simulation engine.

If the plan, theory, configuration, and reference numbers disagree, isolate and report the discrepancy with a small reproducible calculation. Resolve routine numerical details independently. Do not silently modify the mathematical model or treat a failed reference check as permission to change expected values.

## Organize the source for Ivan's review

Use this simple structure; adapt filenames if doing so makes the code clearer:

```text
R-codes/
  README.md                   # source map, assignment, then runnable instructions
  config/section4.R           # readable design settings; one configuration authority
  R/01-designs.R              # scenarios, raw/standardized conversion, domains
  R/02-gaussian-max.R         # cutoffs, powers, envelopes, crossover
  R/03-gates.R                # fixed gate calibration and power
  R/04-gms.R                  # exact known-scale GMS and feasible selection rules
  R/05-monte-carlo.R          # data generation, batching, paired summaries
  R/06-plots.R               # plots from saved results
  scripts/00-check-environment.R
  scripts/01-validate.R
  scripts/02-run-exact.R
  scripts/03-run-smoke.R
  scripts/04-run-simulations.R
  scripts/05-make-figures.R
  scripts/06-summarize.R
  tests/                      # mathematical and simulation validation
  results/<run-id>/            # CSVs, compact RDS, manifest, checksums
  figures/<run-id>/            # PDF and PNG exports
  logs/<run-id>/               # test logs, timing, sessionInfo, completed cells
  cluster/                    # Quest instructions/scripts only if useful
```

All of these files now exist (plus `R/00-setup.R`, which loads the configuration and functions). The verified commands are in [How to run (verified)](#how-to-run-verified). Provide commands runnable from the project root and explain interactive use in R/RStudio. Resolve paths without hard-coding Ivan's home directory. Do not require a particular working directory without checking it and explaining it.

Prefer explicit arguments and short functions with comments explaining assumptions, inputs, returned fields, and the associated P-equation or theorem. Distinguish raw local drift `lambda`, standard deviations `sigma`, standardized drift `delta`, and finite-sample means `lambda/sqrt(n)`. Avoid clever metaprogramming, hidden global state, and an unnecessary package/framework. Base R plus a few established packages is sufficient. Record package versions and dependency setup; do not upgrade global packages unnecessarily.

All production source and numerical outputs belong here. Put the final research handoff in `R2-Luke-outputs/handoff-section4-R-production.md` and link it here. This README and technical run records are the user-requested exception to the project's general Markdown-output convention.

## Execute in this order

### 1. Independent Gaussian engine and meaningful tests

Implement P1–P8, reproduce the reference anchors, and run the mathematical checks before building the full grids. Use stable probability calculations and report integration errors. Tests must detect wrong calibration, sign conventions, raw/standardized confusion, and invalid domains; tests that merely restate the implementation are insufficient.

Verify origin size, probability bounds, max-test permutation symmetry, crossover identities, envelope bounds/endpoints, and invariance under a consistent change of measurement units. Check the gate by an independent numerical route at selected points, including near ties and slack coordinates. Verify its dominance only on the one-core maintained space, and reproduce the reversal at `delta=(-6,1,1)` outside that space. Compare exact GMS calculations with a separate probability calculation or simulation and account for simulation uncertainty. An observed failure must remain visible and be resolved before final figures.

### 2. Complete the deterministic results locally

Run the full specified main grids and produce Figures 1–3, crossover profiles, alpha=.05 sensitivity, and the known-scale GMS selection diagnostic. Run equal-scale two-core correlation checks after the independent engine passes. Correlated integration needs a documented error assessment; fix and record any randomization used by numerical integration routines.

Save the underlying numbers before plotting. Export the full grid, with explicit domain flags, rather than only favorable or visible cells. Use consistent scales and readable labels. Inspect each PDF/PNG; check axes, masks, contours, legends, signs, and units against the data. Do not overwrite the Python prototype figures or existing manuscript figures.

### 3. Test the finite-sample implementation, then run it

Follow the configuration and brief: n=250,1000,4000; independent normal and standardized t5 errors; estimated marginal scales; fixed cutoffs and hard-threshold GMS; the two core allocations, selected alternatives, precision cells, and null checks. Start with independence imposed in calibration. Use the same simulated observations for paired tests and both selection thresholds. Estimate the standard error of the paired rejection difference, not the sum of two independent binomial variances.

Run 1,000-replication smoke tests covering every distinct code path and scenario family. Verify generation moments, scale estimation with divisor n, selection behavior, null rates, paired summaries, and restart behavior. Use exact Gaussian references to check the known-scale version and convergence diagnostics for the feasible version; do not demand exact finite-sample equality with an asymptotic target.

Measure elapsed time and memory on representative n=250 and n=4000 cells. Record a projected time for the complete selected design. Then **run the feasible local production study**, starting at 20,000 replications per cell and following the brief's precision target/cap. Do not arbitrarily stop after the smoke test or reduce replications to meet an unrecorded time budget. Clearly label any capped or incomplete cell. Treat ordinary Monte Carlo intervals under adaptive stopping as approximate, not guaranteed sequential coverage.

Batch samples to bound memory. Save counts and paired sufficient summaries rather than every observation. Use reproducible scenario/chunk random streams, independent of worker scheduling; record seeds and RNG kind. Checkpoints must allow a restart without duplicate replications or silently pooling incompatible configurations. Preserve common random numbers within each paired comparison. Start with conservative local parallelism (at most two workers); benchmark before increasing it, and avoid oversubscribed BLAS threads.

### 4. Extensions only after the core delivery

Run the bivariate exact benchmark if inexpensive. Estimated-correlation finite-sample sensitivity, MMM power, unequal-scale gates, and skewed errors are secondary. Complete core calculations and their checks first. Do not turn optional extensions into a reason to leave the main local computations unfinished.

## Local computer and possible Quest use

At handoff, `Rscript` runs successfully here: R 4.4.2; ggplot2 3.5.2, mvtnorm 1.3.3, jsonlite 2.0.0, testthat 3.2.3, data.table 1.17.8. See `logs/environment-at-handoff.txt`. Recheck in the execution session; these are observed versions, not universal requirements. The extra packages renv and future.apply were not installed; neither is required to start. Hardware limits and simulation runtime have not been benchmarked.

Ivan has access to Northwestern Quest. Local calculations and smoke tests are expected first. If measured production runtime or memory makes a cluster run materially useful, finish all independent local work and prepare a resumable scenario/chunk job design using the same R functions and configuration. State what remains, the measured runtime estimate, and the missing connection/allocation details. Do not assume a remote session exists merely because the coding agent has a terminal.

Quest uses Slurm. Consult the current [official Quest overview](https://www.it.northwestern.edu/departments/it-services-support/research/computing/quest/) and its linked user guide before producing site-specific submission commands. Do not invent account, partition, module version, remote path, or credentials. Heavy computations belong on compute resources, not login nodes. A template is not a submitted or completed job; distinguish those states. No cluster connection or submission is part of this preparatory handoff. Do not introduce paid cloud services as a default.

## Definition of done

- Clearly organized, commented R source and a short code-reading order for Ivan.
- Verified commands for environment check, validation, exact results, smoke tests, simulations, figures, and resuming an interrupted run.
- All preliminary mathematical and software tests actually executed, with logs and failures resolved or explicitly isolated.
- Main deterministic results and figures computed and visually checked; feasible local production simulations completed, with a cell-by-cell run manifest and honest uncertainty estimates.
- Numerical CSVs, selected tables, vector figures, software versions, seeds, timings, and configuration/source identifiers sufficient to reproduce each run.
- A final handoff distinguishing completed results, findings, scientific limitations, and any genuinely cluster-dependent remainder. State which files Luke should use and which figures remain provisional.

Do not edit `main.tex`, bibliography, coauthor notes, or the independent prototype assets. Do not make unsupported claims that retaining is typically cheap, that the gate itself is admissible, that Gaussian dominance automatically holds in finite samples, or that grid maxima are global extrema. No average over alternatives without a specified substantive weighting. No new admissibility-conjecture work.

## How to run (verified)

Verified on November 13, 2026 with R 4.6.1, ggplot2 4.0.3 and mvtnorm 1.4.2 (Apple M2 Max). Only `ggplot2` and `mvtnorm` are required; if missing, `install.packages(c("ggplot2", "mvtnorm"))`. Run from the **project root** (the folder containing `R-codes/`); the scripts also work when started from inside `R-codes/`. Times are measured wall times.

```bash
Rscript R-codes/scripts/00-check-environment.R
```
```bash
Rscript R-codes/scripts/01-validate.R
```
```bash
Rscript R-codes/scripts/02-run-exact.R exact-v1
```
```bash
Rscript R-codes/scripts/05-make-figures.R exact-v1 exact-v1
```
```bash
Rscript R-codes/scripts/03-run-smoke.R smoke-v1 2
```
```bash
Rscript R-codes/scripts/04-run-simulations.R mc-v1 2
```
```bash
Rscript R-codes/scripts/06-summarize.R mc-v1 mc-v1
```

| Step | Time | Output |
|---|---|---|
| 00 environment | 1 s | `logs/environment/environment.txt` |
| 01 validation (all `tests/`) | 6 s | `logs/validation/validation-log.txt`, `validation-checks.csv`; exit status 1 on any failure |
| 02 exact Gaussian results (no random numbers) | 25 s | `results/exact-v1/*.csv(.gz)`, `manifest.txt`, `checksums.csv` |
| 05 figures from saved results | 15 s | `figures/exact-v1/*.pdf|png` |
| 03 smoke (1,000 reps x 108 cells, known-scale check, benchmark) | 40 s | `results/smoke-v1/` incl. `benchmark.csv`, `projection.csv` |
| 04 production Monte Carlo (adaptive 20,000-200,000 reps) | see `results/mc-v1/manifest.txt` | `results/mc-v1/rejection-rates.csv`, `paired-differences.csv`, `cell-manifest.csv`, `diagnostics.csv` |
| 06 tables and MC figure | 5 s | `results/mc-v1/table-*.csv`, `summary.txt`, `figures/mc-v1/supp-mc-differences.*` |

**Resuming an interrupted simulation:** rerun exactly the same `04-run-simulations.R` command. Finished 5,000-replication chunks in `results/mc-v1/chunks/cell-XXX/` are reused; a chunk produced by a different configuration or source version stops the run with an error instead of being pooled. A subset of cells can be run with a third argument, e.g. `Rscript R-codes/scripts/04-run-simulations.R mc-v1 2 1-36`; a later run without the subset re-pools all cells into the tables. Use a new run id after changing `config/section4.R` or `R/03-05`.

**Interactive use (R/RStudio):** set the working directory to the project root, then
```r
source("R-codes/R/00-setup.R"); s4_setup("R-codes")
max_power(c(1, 1, 0.9), alpha = 0.10)          # P1
g <- gate_calibrate(0.10); gate_power(c(1, 1, 1), g)   # P5-P6
two_core_envelopes(1, 1, 0.10)                  # K, L, h*, B
gms_power_known(c(0, 0, 0), sqrt(log(250)), 0.10)      # P8
```

**Code-reading order:** `config/section4.R` → `R/01-designs.R` → `R/02-gaussian-max.R` → `R/03-gates.R` → `R/04-gms.R` → `R/05-monte-carlo.R` → `R/06-plots.R`; then `tests/test-0*.R` and `scripts/0*.R`. The earlier one-off checks in `checks/` (regret and symmetric-gate calculations) predate this production code and are left untouched.
