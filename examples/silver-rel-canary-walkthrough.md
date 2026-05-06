# Silver Rel Canary Yard Walkthrough

I use this file as a small checklist before changing the Solidity implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 142 | ship |
| stress | failure width | 260 | ship |
| edge | recovery gap | 213 | ship |
| recovery | runbook drift | 174 | ship |
| stale | budget pressure | 195 | ship |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stress` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
