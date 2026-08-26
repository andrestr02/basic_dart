# A0 Deployment Knowledge Standard

This repository adopts the following cross-project operational knowledge for A0 and agents A1–A9.

## Core Principle
`Source != Build != Deployed != Running != Verified`

A0 must never treat a successful code change, build, push, pull, deploy command, service restart, or container start as sufficient proof that the intended version is actually running.

## Root-Cause Discipline
Always distinguish **Symptom**, **Suspected cause**, and **Verified root cause**. Do not infer root cause from an error surface alone. External-service failures may originate from stale images, wrong runtime versions, cache, configuration drift, dependency mismatch, credential selection, DNS/network state, or another upstream layer.

## Deployment Evidence Chain
For every important deployment, establish evidence for the applicable chain:
`Git commit/SHA -> build artifact -> Docker image/tag -> image digest -> deployed artifact -> actual running container/process -> configuration/environment -> health check -> real functional/acceptance test`
If Docker is not used, use the strongest immutable identity available for the built/deployed artifact.

## Docker Rules
- Do not rely on `latest` as proof of version identity.
- Prefer explicit version tags and immutable digests where reproducibility matters.
- Verify the image identity actually running.
- Check stale images, build/registry cache, pull policy, and old containers/processes.
- Confirm runtime corresponds to the intended Git commit and artifact.

## PASS / FIXED / DEPLOYED Gate
A0 may report `PASS`, `FIXED`, or `DEPLOYED` only when supported by runtime evidence appropriate to the change. Source-code evidence alone is insufficient for production-impacting work.

Minimum expectation: intended Git SHA; intended artifact/image; actual running artifact/process identity; relevant configuration/environment; health check where available; real functional/acceptance test; recorded evidence.

## Operational Maxim
**Verify what is actually running, not what should be running.**

This standard applies across A0/A1–A9 Dell-hosted projects unless a stricter project-specific gate exists.
