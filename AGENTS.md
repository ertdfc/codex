# Repository instructions

## Purpose

This is a general-purpose starter repository for Codex Cloud. No application framework or dependency manager has been chosen yet.

## Working conventions

- Use Chinese for user-facing explanations unless the user requests another language.
- Inspect the current repository before making changes.
- Choose runtimes and frameworks based on the user's actual project requirements.
- Keep changes focused and update README.md when setup or commands change.
- Do not commit credentials, tokens, passwords, real .env files, dependency directories, or generated build output.
- Commit dependency manifests and lockfiles when dependencies are introduced.

## Validation

- Run `bash scripts/check-environment.sh` to inspect available tools.
- This script is an environment check, not an application test suite.
- Once application code exists, run the relevant tests, lint checks, or build commands and report results.
- Do not claim validation succeeded if it was not run; explain missing tools or access precisely.

## Cloud setup

- The starter repository has no third-party dependencies or services.
- Do not install unrelated frameworks during initial setup.
- Cloud environment creation and publication are managed in Codex Cloud, not by this repository.
