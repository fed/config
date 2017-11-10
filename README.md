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

## Command Line Tools

```
xcode-select --install
```

## Dev Tools

Must have:

* [Chrome](https://www.google.com/chrome/)
* [iTerm2](https://www.iterm2.com/)
* [Git](http://git-scm.com/) (shipped with the command line tools)
* [Fork](https://git-fork.com/) (useful for going through diffs)
* [nvm](https://github.com/creationix/nvm)
* [Yarn](https://yarnpkg.com/) (install using `curl`)

Some other tools I eventually need:

* [Haskell for Mac](http://haskellformac.com/)
* [Charles Proxy](https://www.charlesproxy.com/)
* [Postman](https://www.getpostman.com/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)
* [Genymotion](https://www.genymotion.com/)

Global npm packages:

```
fknussel@MacBook[~/workspace]+ npm list -g --depth=0
/Users/fknussel/.nvm/versions/node/v9.0.0/lib
├── @storybook/cli@3.2.14
├── create-react-app@1.4.3
├── elm@0.18.0
├── eslint@4.10.0
├── http-server@0.10.0
├── nodemon@1.12.1
├── npm@5.5.1
├── trash-cli@1.4.0
└── typescript@2.6.1
```

### Visual Studio Code

Install [vscode](https://code.visualstudio.com/) along with the following extensions:

* [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [React Native Tools](https://marketplace.visualstudio.com/items?itemName=vsmobile.vscode-react-native)
* [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [CSS Comb](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-csscomb)
* [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Auto Complete Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-complete-tag)
* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [File Icons](https://marketplace.visualstudio.com/items?itemName=file-icons.file-icons)

Also copy the `vscode-settings.json` file to `~/Library/Application Support/Code/User/settings.json`.

## Atom

Install [Atom](https://atom.io/) along with the following packages:

* [nuclide](https://nuclide.io/docs/editor/setup/#macos__installation) and its [recommended packages](https://nuclide.io/docs/editor/setup/#post-installation__recommended-packages)
* [atom-ide-ui](https://atom.io/packages/atom-ide-ui)
* [ide-flowtype](https://github.com/flowtype/ide-flowtype)
* [editorconfig](https://atom.io/packages/editorconfig)

## Misc Tools

* [iA Writer](https://ia.net/writer)
* [Magnet](http://magnet.crowdcafe.com/)
* [f.lux](https://justgetflux.com/)
* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)

## Themes / Color Schemes

* [Oceanic Next Color Scheme](https://labs.voronianski.com/oceanic-next-color-scheme/)

## Config Files and Git Scripts

Place these scripts on your home (`~`) directory:

* [`.bash_profile`](./.bash_profile)
* [`.gitconfig`](./.gitconfig)
* [`.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)
* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) (see repository status in your prompt)
* [`git-completion.bash`](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) (Git completion support)

---

## Tools I no longer use

### Sublime Text

Install [ST3](https://www.sublimetext.com/) along with the following packages via [Package Control](https://packagecontrol.io/):

* [Hopscotch](https://github.com/idleberg/Hopscotch.tmTheme)
* [EditorConfig](http://editorconfig.org/)
* [TerminalView](https://github.com/Wramberg/TerminalView) (display the terminal window within ST3)
* [Babel](https://github.com/babel/babel-sublime) (ES6+ and JSX syntax highlighting)
* [SCSS](https://github.com/MarioRicalde/SCSS.tmbundle) (SCSS syntax highlighting)
* [DocBlockr](https://github.com/spadgos/sublime-jsdocs)
* [Pretty JSON](https://github.com/dzhibas/SublimePrettyJson)
* [SublimeLinter](http://www.sublimelinter.com/)
* [SublimeLinter-contrib-eslint](https://github.com/roadhump/SublimeLinter-eslint) (dependency: `npm install -g eslint`)
* [SublimeLinter-contrib-sass-lint](https://github.com/skovhus/SublimeLinter-contrib-sass-lint) (dependency: `npm install -g sass-lint`)

Set up a new **build system for JavaScript** powered by Node.js:

**Tools > Build System > New Build System**, save the file as `JavaScript.sublime-build` within the User directory inside the Sublime Text settings folder with the following content:

```json
{
  "cmd": ["/usr/local/bin/node", "$file"],
  "selector": "source.js"
}
```

Just replace `/usr/local/bin/node` with the output of `which node`.

Hit `Cmd + B` to have the Node interpreter run. Note that the file needs to be saved for this to work.

### Built-in Local Apache Server

To enable PHP edit this file:

```
sudo vim /etc/apache2/httpd.conf
```

and uncomment this line:

```
LoadModule php5_module libexec/apache2/libphp5.so
```

Grant writing privileges:

```
sudo chown -R fknussel: /Library/WebServer/Documents
sudo chmod -R a+wx /Library/WebServer/Documents
```

Restart Apache.
