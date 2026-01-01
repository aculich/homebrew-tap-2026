# Homebrew Tap Setup

This tap contains custom casks for tools not available in official Homebrew.

## Publishing to GitHub

1. Create GitHub repository: `aculich/homebrew-tap-2026`
2. Push this directory:

```bash
cd /Users/me/homebrew-tap-2026
git remote add origin https://github.com/aculich/homebrew-tap-2026.git
git branch -M main
git push -u origin main
```

3. Users can then install with:

```bash
brew tap aculich/tap-2026
brew install --cask aculich/tap-2026/willow-voice
```

## Current Casks

### willow-voice

**Status**: Placeholder (requires manual download)

Willow Voice is not available via direct download URL, so this cask serves as:
- Documentation of the tool
- Placeholder for future automation
- Reference for manual installation steps

**Manual Installation**:
1. Download from https://willowvoice.com
2. Move to /Applications
3. Run: `./scripts/activate-willow-voice.sh` from toolchain-2026

## Adding New Casks

1. Create `Casks/tool-name.rb` following Homebrew cask format
2. Test locally: `brew install --cask aculich/tap/tool-name --dry-run`
3. Commit and push

## License

MIT

