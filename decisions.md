# Decisions

## 2026-10-11 — `make ci` gate uses html-validate via npx, unpinned and save-less

Issue: 2
Decision: The `ci` target of the new root `Makefile` runs `npm install --no-save html-validate` followed by `npx html-validate index.html`. No `package.json` is introduced; the tool is fetched per run; exit codes propagate (no `|| true`).
Rationale: `halloween-costume-qr` is a single-file static HTML site — HTML validation is the only meaningful automated check. The operator fixed this exact recipe. The per-run npm fetch is interpreted as "network the lint command itself needs", satisfying the light-spec constraint.
Alternatives considered: `tidy` (not consistently available on macOS runners without brew), adding a full `package.json` + pinned devDependency (rejected for now to keep the repo zero-config; revisit when more checks land), `htmlhint` (html-validate chosen by operator directive).
Scope: `Makefile` (repo root); any future GitHub Actions workflow that should invoke `make ci`; the driver slice's quality gate.

## 2026-10-11 — Repo configuration lands via `gh` commands outside PRs; only tracked files go through PRs

Issue: 2
Decision: GitHub Projects v2 board, `ai/integration` ref creation, ruleset POSTs, and the dummy issue are executed as `gh`/API commands by the implementer, not shipped as repository files. Only the `Makefile` change travels via a PR (`feat/2-…` → `main`). Rulesets are applied **after** the Makefile PR is merged and `ai/integration` is created, to avoid blocking the bootstrap operations themselves.
Rationale: Rulesets, boards, and refs are GitHub-side state with no file representation the PR could carry; enforcing "PR-only" on the very PR that sets up "PR-only" is a chicken-and-egg ordering trap.
Alternatives considered: Terraform/`gh`-script committed to repo for config-as-code (deferred — heavier than this slice needs; revisit if config must be reproducible across repos, which the Docker-template slice may force); applying rulesets first and bypassing them with admin pushes (rejected: bypass weakens the gate the driver depends on).
Scope: `halloween-costume-qr` GitHub settings (board, branches `main`/`ai/integration`, rulesets); the driver slice's merge flow; future slices that touch repo config.
