# Developer's macOS Fresh Install 🖥

This document describes how I set up my development environment on a new MacBook.

## Finder Preferences

* General > New Finder windows show > Downloads folder
* Sidebar > Show these items in the sidebar > Airdrop, Applications, Desktop, Downloads & home directory
* Advanced > Show all filename extensions
* Show View Options > Group By: Name & Sort By: Name

## Chrome DevTools Preferences

* Settings > Preferences > Network > Disable cache (while DevTools is open)

## Dotfiles

* [`~/.zshrc`](./.zshrc)
* [`~/.gitconfig`](./.gitconfig)
* [`~/.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)

## SSH Keys

Add your SSH private key to the `ssh-agent` and store your passphrase in the keychain:

```
ssh-add -K ~/.ssh/id_rsa
```

To have MacOS remember your passphrase, create a new file `~/.ssh/config` and enable the `UseKeychain` option:

```
Host *
    UseKeychain yes
```

More info on both the [Bitbucket](https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html#SetupanSSHkey-ssh2SetupSSHonmacOS/Linux) and [GitHub](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) docs.

## Browsers

* [Chrome](https://www.google.com/chrome/) or [Chrome Dev](https://www.google.com/chrome/dev/)
* [Firefox](https://www.mozilla.org/en-US/firefox/new/) and/or [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
* [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)

## Dev Tools

* [iTerm2](https://www.iterm2.com/) with this [colour preset](https://draculatheme.com/iterm/)
* [Homebrew](https://brew.sh/), which also installs:
  * [Command Line Tools](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/)
  * [Git](http://git-scm.com/)
* [oh-my-zsh](https://ohmyz.sh/) (make sure [zsh is installed and updated](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH#zsh), should be shipped with MacOS) and [zsh-syntax-highlighting
](https://github.com/zsh-users/zsh-syntax-highlighting)
* [nvm](https://github.com/creationix/nvm) (install using `curl` or `wget`, Brew is not supported)
* [Yarn](https://yarnpkg.com/) (install using npm: `npm install --global yarn`)
* [VSCode](https://code.visualstudio.com/) (make sure to enable "Settings Sync" with GitHub)
* [Sublime Text](https://www.sublimetext.com/)
* [Sublime Merge](https://www.sublimemerge.com/) (also configure its [CLI](https://forum.sublimetext.com/t/os-x-command-line-for-sublime-merge/39150))
* [Haskell for Mac](http://haskellformac.com/)
* [Charles Proxy](https://www.charlesproxy.com/)
* [Postman](https://www.getpostman.com/)

## CLI Tools

* [bat](https://github.com/sharkdp/bat)
* [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
* [trash-cli](https://github.com/sindresorhus/trash-cli)

## Productivity Tools

* [iA Writer](https://ia.net/writer)
* [iA Presenter](https://ia.net/presenter/)
* [Alfred](https://www.alfredapp.com/)
* [Freedom](https://freedom.to/)
* [Magnet](http://magnet.crowdcafe.com/) or [Rectangle](https://rectangleapp.com/)
* [Dato](https://sindresorhus.com/dato)
* [Pasta](https://getpasta.com/) (or use Alfred's built-in clipboard)
* [Xnip](http://xnipapp.com/)
* [PDF Combo](https://apps.apple.com/au/app/pdfcombo/id1030461463) to combine and [Lightweight PDF](https://apps.apple.com/au/app/lightweight-pdf/id1450640351) to compress PDFs

## Visual Studio Code

* Install the [Fira Code font family](https://github.com/tonsky/FiraCode)
* Create workspace directory: `mkdir ~/workspace`
