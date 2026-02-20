# Homebrew Fladder Tap

Unofficial Homebrew tap for [Fladder](https://github.com/DonutWare/Fladder) - A Simple Jellyfin frontend built with Flutter.

## Why This Tap?

Fladder's macOS builds are not code-signed with an Apple Developer certificate, which means they cannot be included in the official Homebrew Cask repository. This tap provides an easy way to install and manage Fladder on macOS using Homebrew.

## Installation

First, add this tap to Homebrew:

```bash
brew tap schembriaiden/fladder
```

Then install Fladder:

```bash
brew install --cask fladder
```

Or do both in one command:

```bash
brew install --cask schembriaiden/fladder/fladder
```

## First Launch

Since Fladder is not code-signed, macOS will block it on first launch. To bypass the unidentified developer warning:

**Method 1: Right-click + Control**
1. Locate Fladder in your Applications folder
2. Right-click the application and click "Open" while holding `Control`
3. Click "Open" in the security dialog

**Method 2: System Settings**
1. Try to open Fladder normally (it will be blocked)
2. Open `System Settings > Privacy & Security`
3. Scroll down to the Security section
4. Click "Open Anyway" next to the Fladder warning

After this first time, you can launch Fladder normally from Launchpad or Applications.

## Updating

To update Fladder to the latest version:

```bash
brew upgrade fladder
```

## Uninstalling

To remove Fladder:

```bash
brew uninstall --cask fladder
```

To completely remove Fladder including all app data and preferences:

```bash
brew uninstall --zap --cask fladder
```

To remove this tap:

```bash
brew untap schembriaiden/fladder
```

## What Gets Removed with `--zap`?

The `--zap` flag removes:
- `~/Library/Containers/nl.jknaapen.fladder` - App data and preferences (142.9 MB)
- `~/Library/Application Scripts/nl.jknaapen.fladder` - Sandboxed scripts

## Troubleshooting

### Updates not detected

Force Homebrew to check for updates:

```bash
brew update
brew upgrade fladder
```

## Version Information

- **Current Version:** 0.10.0
- **Release Date:** February 20, 2026
- **Upstream:** [DonutWare/Fladder](https://github.com/DonutWare/Fladder)

## Links

- [Fladder Official Repository](https://github.com/DonutWare/Fladder)
- [Fladder Releases](https://github.com/DonutWare/Fladder/releases)
- [Report Issues](https://github.com/schembriaiden/homebrew-fladder/issues)
- [Jellyfin](https://jellyfin.org/)

## Contributing

Found a bug or have a suggestion? Please [open an issue](https://github.com/schembriaiden/homebrew-fladder/issues/new).

## License

This tap follows the same license as Fladder: [GPL-3.0](https://github.com/DonutWare/Fladder/blob/develop/LICENSE)

## Disclaimer

This is an unofficial, community-maintained tap. It is not affiliated with or endorsed by the Fladder developers or Homebrew maintainers.