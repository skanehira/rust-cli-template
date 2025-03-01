# Rust CLI Template

A ready-to-use template for creating Rust CLI applications.

## Overview

This repository serves as a template for quickly bootstrapping Rust command-line
interface (CLI) applications using `cargo-generate`. It provides a minimal yet
comprehensive foundation with the following features:

- CLI argument parsing using [clap](https://github.com/clap-rs/clap) with derive
  macros
- Pre-configured Cursor IDE rules for consistent code style and development
  experience
- GitHub Actions workflow for CI/CD
  - Code coverage reporting with [octocov](https://github.com/k1LoW/octocov)
  - Automatic benchmark result visualization and deployment with
    [github-action-benchmark](https://github.com/benchmark-action/github-action-benchmark)
  - Security audit checks for dependencies
  - Automated release workflow for publishing
  - Automated dependency updates with Dependabot

## Project Structure

Generated projects will have the following structure:

```
.
├── .cursor/           # Cursor rules
├── .github/           # GitHub Actions workflows
│   ├── workflows/     # CI/CD workflows for testing, benchmarking, and releasing
│   │   ├── ci.yml     # Main CI workflow (tests, linting, coverage)
│   │   ├── audit.yml  # Security audit workflow
│   │   └── release.yml # Release automation workflow
│   └── dependabot.yaml # Automated dependency update configuration file
├── benches/           # Benchmark code (requires nightly Rust)
├── src/               # Source code
├── .gitignore         # Git ignore file
├── .octocov.yaml      # Code coverage configuration
├── goreleasser.yaml   # GoReleaser configuration file for cross-platform builds and distribution
├── Cargo.toml         # Project manifest
├── Cargo.lock         # Dependency lock file
└── rust-toolchain.toml # Rust toolchain configuration
```

## Benchmark visualization

The benchmark results are automatically deployed to GitHub Pages for easy
visualization and performance tracking. You need to create a `gh-pages` branch
in your repository before first push.

<img width="1165" alt="image" src="https://github.com/user-attachments/assets/333631e2-dee0-48f9-bc8e-d72c583857de" />

<img width="874" alt="image" src="https://github.com/user-attachments/assets/6a07ea77-1294-422f-abd6-cb3e4281c26e" />

## Coverage

This project uses [octocov](https://github.com/k1LoW/octocov) to measure code
coverage. During CI execution, coverage reports are automatically generated and
displayed as comments on PRs or commits. The coverage history is also tracked,
allowing you to see changes over time.

The coverage reports are deployed to GitHub Pages for easy visualization.
Coverage information can also be displayed in the README as a badge.

<img width="936" alt="image" src="https://github.com/user-attachments/assets/
8471d58a-06b3-4fd5-85e6-916959704c69" />

The detailed configuration for octocov is managed in the `.octocov.yml` file.

## Usage

### Prerequisites

- [cargo-generate](https://github.com/cargo-generate/cargo-generate)
- [gh](https://github.com/cli/cli)

### Creating a New Project

Create a new project using this template:

```bash
cargo generate --git https://github.com/skanehira/rust-cli-template.git
```

Follow the prompts to customize your project.

### Running Tests

```bash
cargo test
```

### Running Benchmarks

Benchmarks require the nightly Rust channel:

```bash
cargo +nightly bench
```

---

Feel free to customize this template to fit your specific needs!
