# databook-studio/homebrew-tap

Homebrew tap for [SAYA CLI](https://github.com/databook-studio/saya-cli) — a
database-aware AI agent for the terminal.

## Install

```bash
brew install databook-studio/tap/saya
```

Or tap first, then install:

```bash
brew tap databook-studio/tap
brew install saya
```

Prebuilt bottles are the release binaries from
[saya-cli releases](https://github.com/databook-studio/saya-cli/releases):
macOS (Apple Silicon + Intel) and Linux (x86_64).

## Upgrade

```bash
brew update && brew upgrade saya
```

The `saya.rb` formula is bumped (version + checksums) for each new saya-cli
release.
