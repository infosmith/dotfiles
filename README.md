# dotfiles

Have .files will travel.

## Installation

1. Install GNU stow
```bash
brew install stow
```

2. Clone repository
```bash
git clone git@github.com:infosmith/dotfiles.git $HOME/my.dotfiles
```

3. Stow shell
```bash
cd ~/my.dotfiles && stow shell
```
This will fail if instances of the files to be symlinked already exist.
If so, rename those files to filename.bkup. Keep these backups around in case
my configuration doesn't float your boat.

4. Restart the terminal session

5. Stow additional packages
```bash
cd ~/my.dotfiles
stow git # must git config user and change existing ~/.ssh keynames in directory or ~/.ssh/config file
stow javascript # assumes nvm is installed
stow python # assumes miniconda is installed
etc..
```

## Package Requirements

| Package              | Requirements                                                      |
|----------------------|-------------------------------------------------------------------|
| git                  | git, icdiff, meld, diff-so-fancy                                  |
| javascript           | nvm                                                               |
| python               | miniconda, isort, ipython                                         |
| shell                | zsh, oh-my-zsh, direnv                                            |


## References
[Google Style Guide](https://google.github.io/styleguide/shellguide.html)
[Writting Safe Shell Scripts](https://sipb.mit.edu/doc/safe-shell/)
