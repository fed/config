# Developer's macOS Fresh Install

This document describes how I set up my development environment on a brand new MacBook or iMac 🖥

## System Preferences

* General > Use dark menu bar and dock
* Dock > Automatically hide and show the Dock

## Hostname

```
sudo scutil --set HostName <new-host-name>
```

## Workspace

```
mkdir ~/workspace
```

## Dev Tools

Must have:

* [Chrome](https://www.google.com/chrome/)
* [iTerm2](https://www.iterm2.com/)
* [Git](http://git-scm.com/)
* [GitUp](http://gitup.co/) (useful for going through `diff`'s)
* [nvm](https://github.com/creationix/nvm)
* [Yarn](https://yarnpkg.com/) (install using `curl`)

Some other apps I eventually need:

* [Charles Proxy](https://www.charlesproxy.com/)
* [Postman](https://www.getpostman.com/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)

## Visual Studio Code

* [Visual Studio Code](https://code.visualstudio.com/)

Useful extensions:

* [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [TSLint](https://marketplace.visualstudio.com/items?itemName=eg2.tslint)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [stylelint](https://marketplace.visualstudio.com/items?itemName=shinnn.stylelint)
* [Document This (jsdoc)](https://marketplace.visualstudio.com/items?itemName=joelday.docthis)
* [Svg Preview](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.svgpreview)

## Haskell

* [Haskell for Mac](http://haskellformac.com/)

## Config Files and Git Scripts

Place these scripts on your home (`~`) directory:

* [`.bash_profile`](./.bash_profile)
* [`.gitconfig`](./.gitconfig)
* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) (see repository status in your prompt)
* [`git-completion.bash`](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) (Git completion support)

## Misc Tools

* [iA Writer](https://ia.net/writer)
* [Magnet](http://magnet.crowdcafe.com/)
* [f.lux](https://justgetflux.com/)
* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)
* [Quickly](https://philmarell.com/quickly/)

---

## Tools I no longer use

### Sublime Text

* [Sublime Text](https://www.sublimetext.com/)

Install the following Sublime packages via [Package Control](https://packagecontrol.io/):

* [Cobalt2](https://github.com/wesbos/cobalt2) or [Material Theme](https://github.com/equinusocio/material-theme)
* [EditorConfig](http://editorconfig.org/)
* [Babel](https://github.com/babel/babel-sublime) (ES6 and JSX syntax highlighting)
* [SCSS](https://github.com/MarioRicalde/SCSS.tmbundle) (SCSS syntax highlighting)
* [DocBlockr](https://github.com/spadgos/sublime-jsdocs)
* [Pretty JSON](https://github.com/dzhibas/SublimePrettyJson)
* [SublimeLinter](http://www.sublimelinter.com/)
* [SublimeLinter-contrib-eslint](https://github.com/roadhump/SublimeLinter-eslint) (dependency: `npm install -g eslint`)
* [SublimeLinter-contrib-sass-lint](https://github.com/skovhus/SublimeLinter-contrib-sass-lint) (dependency: `npm install -g sass-lint`)
