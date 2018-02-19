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
* [Watchman](https://facebook.github.io/watchman/) (make sure it's in your `$PATH` environment variable)

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
/Users/fknussel/.nvm/versions/node/v8.9.1/lib
├── @storybook/cli@3.2.17
├── create-react-app@1.4.3
├── elm@0.18.0
├── flow-typed@2.2.3
├── npm@5.5.1
├── trash-cli@1.4.0
└── typescript@2.6.2
```

## Nuclide <img src="https://nuclide.io/static/logo.png" width="30" />

Install [Atom](https://atom.io/) along with the following packages:

* [Nuclide](https://nuclide.io/docs/editor/setup/#macos__installation) and its [recommended packages](https://nuclide.io/docs/editor/setup/#post-installation__recommended-packages)
* [ide-flowtype](https://atom.io/packages/ide-flowtype)
* [autocomplete-paths](https://atom.io/packages/autocomplete-paths)
* [linter-eslint](https://atom.io/packages/linter-eslint)
* [linter-stylelint](https://atom.io/packages/linter-stylelint)
* [editorconfig](https://atom.io/packages/editorconfig)
* [prettier-atom](https://atom.io/packages/prettier-atom) (do not install Linter when prompted to, Nuclide Code Diagnostics will take care)
* [css-comb](https://atom.io/packages/css-comb)

Remember to enable *format on save* on both Prettier and CSSComb.

*Note:* for some reason, Flow support is not being shipped with Nuclide by default. That's why we need to install ide-flowtype as well. Make sure to enable "Use the Flow binary included in each project's flow-bin (requires restart)" on the Nuclide settings (can also be toggled on the ide-flowtype package settings).

Editor and package settings can be found [here](./nuclide-config.cson).

## Visual Studio Code <img src="https://user-images.githubusercontent.com/29654835/27530003-e78876b8-5a13-11e7-8863-83fbdb900f72.png" width="30" />

Install [vscode](https://code.visualstudio.com/) along with the following extensions:

* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Auto Complete Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-complete-tag)
* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [CSS Comb](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-csscomb)
* [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
* [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [File Icons](https://marketplace.visualstudio.com/items?itemName=file-icons.file-icons)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)
* [React Native Tools](https://marketplace.visualstudio.com/items?itemName=vsmobile.vscode-react-native)

Also copy the `vscode-settings.json` file to `~/Library/Application Support/Code/User/settings.json`.

## Misc (non-dev) Tools

* [iA Writer](https://ia.net/writer)
* [Magnet](http://magnet.crowdcafe.com/)
* [f.lux](https://justgetflux.com/)
* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)

## Config Files and Git Scripts

Place these scripts on your home (`~`) directory:

* [`.bash_profile`](./.bash_profile)
* [`.gitconfig`](./.gitconfig)
* [`.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)
* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) (see repository status in your prompt)
* [`git-completion.bash`](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) (Git completion support)
* [`.csscomb.json`](./.csscomb.json)

## Themes / Color Schemes

* [Gloom](https://github.com/hejrobin/gloom)
* [Oceanic Next](https://labs.voronianski.com/oceanic-next-color-scheme/) (with background colour set to `#282c35`)](https://twitter.com/dan_abramov/status/965258454624595968)

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

Restart Apache (using aliases on `~/.bash_profile`).
