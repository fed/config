# Frontend Mac Setup 🖥

This document describes how I set up my development environment on a new MacBook.

## Finder Preferences

- General > New Finder windows show > Downloads folder
- Sidebar > Show these items in the sidebar > Airdrop, Applications, Downloads & home directory
- Advanced > Show all filename extensions
- Advanced > Keep folders on top > In windows when sorting by name
- Show View Options > Group By: Name & Sort By: Name

See [screenshots](./settings) in the `settings` folder for more configurations.

## Dotfiles

- [`~/.zshrc`](./.zshrc)
- [`~/.gitconfig`](./.gitconfig)
- [`~/.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)

## SSH Keys

First [generate a new SSH key and add it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), and then [add it to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

## Browsers

- [Chrome Dev](https://www.google.com/chrome/dev/)
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)

## Dev Tools

- [iTerm2](https://www.iterm2.com/)
- [Homebrew](https://brew.sh/) (which also installs the [Command Line Tools](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/) and [Git](http://git-scm.com/))
- [nvm](https://github.com/creationix/nvm)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Sublime Text](https://www.sublimetext.com/)
- [Sublime Merge](https://www.sublimemerge.com/)
- [Haskell for Mac](http://haskellformac.com/)
- [Charles Proxy](https://www.charlesproxy.com/)
- [RapidAPI](https://paw.cloud/)

## Productivity Tools

- [iA Writer](https://ia.net/writer)
- [Raycast](https://www.raycast.com)
- [Freedom](https://freedom.to/)
- [Dato](https://sindresorhus.com/dato)
- [Magnet](http://magnet.crowdcafe.com/) or [Rectangle](https://rectangleapp.com/)
- [PDF Combo](https://apps.apple.com/au/app/pdfcombo/id1030461463) to combine and [Lightweight PDF](https://apps.apple.com/au/app/lightweight-pdf/id1450640351) to compress PDFs
- [Xnip](http://xnipapp.com/) or [Shottr](https://shottr.cc)

## Brew packages

```
brew install pure zsh-syntax-highlighting diff-so-fancy bat macos-trash
```

- [pure](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
- [bat](https://github.com/sharkdp/bat)
- [macos-trash](https://github.com/sindresorhus/macos-trash)

## Configuring iTerm

- [pure](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [iterm2-snazzy](https://github.com/sindresorhus/iterm2-snazzy) and select colour preset from Settings > Profiles > Colors
- [zsh-nvm-auto-switch](https://github.com/aspirewit/zsh-nvm-auto-switch)

## IDE/Terminal themes, colour schemes and font families

- [Gloom](https://marketplace.visualstudio.com/items?itemName=adamgirton.gloom)
- [Atom One Light](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onelight)
- [Fira Code](https://github.com/tonsky/FiraCode)

## Other

- Create workspace directory: `mkdir ~/workspace`
- Browser cache: `Settings > Preferences > Network > Disable cache (while DevTools is open)`
