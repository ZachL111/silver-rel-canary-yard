# silver-rel-canary-yard

`silver-rel-canary-yard` is a Solidity project in reliability. Its focus is to develop a Solidity command-oriented project for canary scenarios with fixture event logs, golden state snapshots, and bounded memory input sets.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Silver Rel Canary Yard Review Notes

For a quick review, compare `failure width` with `budget pressure` before reading the middle cases.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/silver-rel-canary-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `failure width` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
