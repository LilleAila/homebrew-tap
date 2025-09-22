An attempt to package some brew packages.

## Usage

```sh
brew tap LilleAila/homebrew-tap
```

## Development

After tapping the tap, development can be done in `/opt/homebrew/Library/Taps/lilleaila/homebrew-tap`. After changing the files, to test it do for example:

```sh
brew install --cask LilleAila/homebrew-tap/vesktop
```

> [!NOTE]
> might need to force it with `reinstall`

Creating cask:

```sh
brew create https://github.com/sdatkinson/NeuralAmpModelerPlugin/releases/download/v0.7.13/NeuralAmpModeler-v0.7.13-mac.dmg --tap LilleAila/homebrew-tap --set-name neural-amp-modeler --cask
```

then edit it manually

### Relevant docs and resources:

- https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap
- https://github.com/Homebrew/homebrew-cask/tree/main
- https://docs.brew.sh/Cask-Cookbook
