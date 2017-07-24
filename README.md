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
>Insert `/usr/local/bin` to the first line of `/private/etc/paths` and reboot the Mac

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

### Install `Git`
```shell
brew install git

# symlink .gitconfig to this repository
cd ~
ln -s ~/dotfiles/.gitconfig .
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

### Install `Prezto`
```shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```
> Next create the `~/.zshrc` file by running
```shell
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
> Add modules by editing the `~/.zpreztorc` file
```shell
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'git' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'
```
> Change theme to `paradox`
```shell
zstyle ':prezto:module:prompt' theme 'paradox'
```

> Source `env.sh` by editing `~/.zshrc`
```shell
# Add env.sh
source ~/dotfiles/env.sh
```
