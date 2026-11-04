# echecnoir11/homebrew-tap

Homebrew tap for the echecnoir wonderland apps for macOS:

- [@@ennuienoir](https://github.com/echecnoir11/ennuienoir) — experimental video effects.
- [print@@dock](https://github.com/echecnoir11/print-dock) — a floating G-code queue with verified microSD transfers and print timers.

```bash
brew tap echecnoir11/tap
brew install --cask ennuienoir
brew install --cask print-dock
brew upgrade --cask <name>        # update
brew uninstall --cask <name>      # remove (add --zap to also delete saved data)
```

If Homebrew reports an *untrusted tap*, run `brew trust echecnoir11/tap` once.

The apps are not notarized: on first launch open System Settings › Privacy & Security and click **Open Anyway**.
