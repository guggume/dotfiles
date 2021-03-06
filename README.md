Follow the link [Mac Setup](http://sourabhbajaj.com/mac-setup/)
### Install `Spectacle`
Download Spectacle from [here](https://www.spectacleapp.com/)
> Set `Spectacle` to run as background application in Preferences

### Install `Sublime`
Download Sublime from [here](http://www.sublimetext.com/)

> Create a shortcut so we can launch Sublime Text from the command-line
```shell
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

> Install `Package control` from [here](https://packagecontrol.io/installation)

> Symlink sublime package settings
```shell
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/dotfiles/sublime/User
```

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

### Install `Cocoapods`
```shell
brew update
brew install cocoapods
```

### Install `Git`
```shell
brew install git
```

> Generate ssh key and add to the server
```shell
ssh-keygen -t rsa -C "sandeep@guggu.me"
```

> symlink `.gitconfig`
```shell
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

### Install nvm as zsh plugin `zsh-nvm`
```shell
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm

```
> Then source it by editing `.zshrc`
```shell
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
```

> NVM tips
```shell
# Upgrade nvm
nvm upgrade

# List all available node versions installed
nvm ls

# List v8 node versions available on remote
nvm ls-remote `v8`

# Install node stable or version specified
nvm install `stable|version`

# Use stable or version specified
nvm use `stable|version `

# Use .nvmrc file in repository to auto load node when changing directory
```

### Install `yarn` without installing `node`
```shell
brew install yarn --ignore-dependencies
```
