Follow the link [Mac Setup](http://sourabhbajaj.com/mac-setup/)
### Create `workspace` directory
```shell
mkdir workspace
```

### Install `XCode`

Install Xcode from the App store.

#### For installing Xcode command line tools run the command
```shell
xcode-select --install
```

### Install `Homebrew`
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```shell
# Fetch the newest version of Homebrew and all formulae from GitHub using
brew update

# List all installed formulae.
brew list

# Show formulae that have an updated version available.
brew outdated

# Upgrade outdated formulae
brew upgrade [formulae]

# Upgrade outdated, unpinned brews.
brew upgrade
```

### Install `iTerm`
- Download latest stable iTerm from [here](https://iterm2.com/downloads/stable/latest)
- Color Scheme: [Solarized Dark High Contrast](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20Higher%20Contrast.itermcolors), included in Preferences file.
- Preferences: Open iTerm Preferences
  * General -> Preferences -> Load preferences from custom folder or URL
    - Select `com.googlecode.iterm2.plist` from the repository.
    
### Install `ZSH`
```shell
brew install zsh zsh-completions
```

### Change shell from `bash` to `zsh`
```shell
chsh -s /usr/local/bin/zsh
```
> You must log out and log back in to see this change.
