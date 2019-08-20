# Developer's macOS Fresh Install

This document describes how I set up my development environment on a brand new MacBook 🖥

## System Preferences

* Dock > Automatically hide and show the Dock
* Notifications > Turn on "Do Not Disturb" when mirroring to TVs and projectors
* Siri > Disable Ask Siri

## Finder Preferences

* General > New Finder windows show
* Sidebar > Show these items in the sidebar
* Advanced > Show all filename extensions

## Chrome DevTools Preferences

* Settings > Preferences > Network > Disable cache (while DevTools is open)
* Settings > Preferences > Appearance > Theme: Dark

## Hostname

```
sudo scutil --set HostName <new-host-name>
```

## Workspace

```
mkdir ~/workspace
```

## Adding your SSH key to the ssh-agent

Add your SSH private key to the ssh-agent and [store your passphrase in the keychain](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent):

```
ssh-add -K ~/.ssh/id_rsa
```

[To have MacOS remember your passphrase](https://superuser.com/questions/1127067/macos-keeps-asking-my-ssh-passphrase-since-i-updated-to-sierra/1158050#1158050), create a new file `~/.ssh/config` and enable the `UseKeychain` option:

```
Host *
    UseKeychain yes
```

## Dev Tools

Must have:

* [Chrome Dev](https://www.google.com/chrome/dev/)
* [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
* [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)
* [iTerm2](https://www.iterm2.com/) with this [colour preset](https://draculatheme.com/iterm/)
* [Homebrew](https://brew.sh/), which also installs:
  * [Command Line Tools](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/)
  * [Git](http://git-scm.com/)
* [oh-my-zsh](https://ohmyz.sh/) (make sure [zsh is installed and updated](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH#zsh), should be shipped with MacOS) and [zsh-syntax-highlighting
](https://github.com/zsh-users/zsh-syntax-highlighting)
* [nvm](https://github.com/creationix/nvm) (install using curl or wget, Brew is not supported)
* [Yarn](https://yarnpkg.com/) (install using Brew) (make sure to install **after** node/npm are installed using nvm)

Optional:

* [Haskell for Mac](http://haskellformac.com/)
* [Charles Proxy](https://www.charlesproxy.com/)
* [Postman](https://www.getpostman.com/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)
* [PSequel](http://www.psequel.com/)

React Native:

* [Watchman](https://facebook.github.io/watchman/) (make sure it's in your `$PATH` environment variable)
* [React Native Debugger](https://github.com/jhen0409/react-native-debugger)

## Misc (non-dev) Tools

* [iA Writer](https://ia.net/writer)
* [Magnet](http://magnet.crowdcafe.com/)
* [Dato](https://sindresorhus.com/dato)
* [Xnip](http://xnipapp.com/)
* [Dr. Unarchiver](https://www.drcleaner.com/dr-unarchiver/)
* [Flycut](https://github.com/TermiT/Flycut)
* [f.lux](https://justgetflux.com/)

## Chrome Extensions

* [React DevTools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
* [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)
* [Save to Pocket](https://chrome.google.com/webstore/detail/save-to-pocket/niloccemoadcdkdjlinkgdfekeahmflj)
* [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
* [Redirector](https://chrome.google.com/webstore/detail/redirector/ocgpenflpmgnfapjedencafcfakcekcd)
* [axe Accessibility Testing](https://chrome.google.com/webstore/detail/axe/lhdoppojpmngadmnindnejefpokejbdd)
* [ARC Toolkit: Accessibility testing tools from The Paciello Group](https://chrome.google.com/webstore/detail/arc-toolkit/chdkkkccnlfncngelccgbgfmjebmkmce)
* [headingsMap: show and audit headings structure](https://chrome.google.com/webstore/detail/headingsmap/flbjommegcjonpdmenkdiocclhjacmbi)
* [Web Developer](https://chrome.google.com/webstore/detail/web-developer/bfbameneiokkgbdmiekhjnmfkcnldhhm)

## Global npm packages

```
yarn global add madge nodemon prettier serve trash-cli
```

### Sublime Text/Merge <img src="https://www.sublimehq.com/images/sublime_text.png" width="35" /> <img src="https://www.sublimehq.com/images/sublime_merge.png" width="35" />

Install [ST3](https://www.sublimetext.com/) along with [Sublime Merge](https://www.sublimemerge.com/) and the following packages via [Package Control](https://packagecontrol.io/):

* [Babel](https://github.com/babel/babel-sublime) (ES6+ and JSX syntax highlighting)
* [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
* [A File Icon](https://github.com/ihodev/a-file-icon)
* [EditorConfig](http://editorconfig.org/)
* [Prettier](https://github.com/jonlabelle/SublimeJsPrettier)
* [SublimeLinter](http://www.sublimelinter.com/)
* [SublimeLinter-eslint](https://github.com/SublimeLinter/SublimeLinter-eslint)
* [SublimeLinter-flow](https://github.com/SublimeLinter/SublimeLinter-flow)
* [Bracket Highlighter](https://github.com/facelessuser/BracketHighlighter)
* [GitLink](https://github.com/rscherf/GitLink)
* [Sidebar Enhancements](https://github.com/SideBarEnhancements-org/SideBarEnhancements)
* [CSSComb](https://github.com/csscomb/sublime-csscomb)
* [SCSS](https://github.com/MarioRicalde/SCSS.tmbundle) (Sass syntax highlighting)
* [Git Blame on status bar](https://gist.github.com/rodrigobdz/dbcdcaac6c5af7276c63ec920ba894b0)

## Visual Studio Code <img src="https://user-images.githubusercontent.com/29654835/27530003-e78876b8-5a13-11e7-8863-83fbdb900f72.png" width="30" />

Install [vscode](https://code.visualstudio.com/) along with the following extensions:

* [Project Manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager)
* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Auto Complete Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-complete-tag)
* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [File Icons](https://marketplace.visualstudio.com/items?itemName=file-icons.file-icons)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)
* [Sublime Text Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
* [Visual Studio IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)

Also copy the `vscode-settings.json` file to `~/Library/Application Support/Code/User/settings.json`.

## Config Files and Git Scripts

Place these dotfiles in your home (`~`) directory:

* [`.zshrc`](./.zshrc)
* [`.gitconfig`](./.gitconfig)
* [`.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)
* [`.csscomb.json`](./.csscomb.json)

## Archive

### Nuclide <img src="https://nuclide.io/static/logo.png" width="30" />

Install [Atom](https://atom.io/) along with the following packages:

* [Nuclide](https://nuclide.io/docs/editor/setup/#macos__installation) and its [recommended packages](https://nuclide.io/docs/editor/setup/#post-installation__recommended-packages)
* [autocomplete-paths](https://atom.io/packages/autocomplete-paths)
* [linter-eslint](https://atom.io/packages/linter-eslint)
* [linter-stylelint](https://atom.io/packages/linter-stylelint)
* [editorconfig](https://atom.io/packages/editorconfig)
* [prettier-atom](https://atom.io/packages/prettier-atom) (do not install Linter when prompted to, Nuclide Code Diagnostics will take care)
* [css-comb](https://atom.io/packages/css-comb)

Remember to enable Prettier's *format on save* option.

Also, make sure to enable "Use the Flow binary included in each project's flow-bin (requires restart)" under Language Settings > Flow on the Nuclide settings.

Editor and package settings can be found [here](./nuclide-config.cson).

### Bash and Git Autocompletion

There's a Homebrew formula that sets your shell up to handle Git completion:

```
brew install bash-completion
```

Now add these lines to your `~/.bash_profile`:

```
##
## enable bash completion
##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Config Files and Git Scripts

* [`.bash_profile`](./.bash_profile)
* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) (see repository status in your prompt)
* [`git-completion.bash`](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) (Git completion support)

### Built-in Local Apache Server

PHP comes preinstalled on Mac OS X, so no install is required, and you can run PHP immediately by opening the console and typing:

```
php -S localhost:8000
```

The folder where you run that command will be treated as the web root.

To enable PHP on the built-in Apache server, edit this file:

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

### Themes / Color Schemes

* [Oceanic Next](https://labs.voronianski.com/oceanic-next-color-scheme/) (with background colour set to `#282c35`)
* [Dracula](https://draculatheme.com/)
* [Gloom](https://github.com/hejrobin/gloom)

## Useful WebApps

* Upload images: https://imgur.com/
* Upload PDF documents: https://scribd.com/
* Upload slides: https://speakerdeck.com/
* Project Management and Agile Boards: https://trello.com/
* Read later: https://getpocket.com/
* Notes: https://evernote.com/
* Lists: https://workflowy.com/
* Dropbox Paper: https://paper.dropbox.com/
* Live code sharing: https://codeshare.io/
* Code snippets and online editors: https://codepen.io/, http://v5.jsbin.com/ and https://codesandbox.io/
