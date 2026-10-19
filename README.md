# risadams/homebrew-tap

Homebrew formulae for [Janus](https://github.com/risadams/Janus), a local proxy for Claude Code.

```bash
brew install risadams/tap/janus
```

`brew upgrade janus` brings each new stable release. The formula installs the release's own archive, checked against its signed `checksums.txt`, and the tab-completion scripts for bash, zsh, and fish.

The formula is written by Janus's release workflow (`scripts/formula.sh`) on each stable release; a change made here by hand is lost at the next one. Report problems in [risadams/Janus](https://github.com/risadams/Janus/issues).
