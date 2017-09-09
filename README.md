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
* [GitUp](http://gitup.co/) (useful for going through `diff`'s)
* [nvm](https://github.com/creationix/nvm)
* [Yarn](https://yarnpkg.com/) (install using `curl`)

Some other apps I eventually need:

* [Charles Proxy](https://www.charlesproxy.com/)
* [Postman](https://www.getpostman.com/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)

## [Atom](http://atom.io/)

Install the following packages:

* [Nuclide](https://nuclide.io/docs/editor/setup/#macos__installation)
* [Nuclide's recommended packages](https://nuclide.io/docs/editor/setup/#post-installation__recommended-packages)
* [editorconfig](https://atom.io/packages/editorconfig)
* [linter-eslint](https://atom.io/packages/linter-eslint) 

Also install these npm packages globally:

```
npm install -g eslint flow-bin
```

## Functional Programming

* [Elm Platform](https://guide.elm-lang.org/install.html)
* [Haskell for Mac](http://haskellformac.com/)

## Misc Tools

* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)
* [iA Writer](https://ia.net/writer)
* [Magnet](http://magnet.crowdcafe.com/)
* [f.lux](https://justgetflux.com/)

## Config Files and Git Scripts

Place these scripts on your home (`~`) directory:

* [`.bash_profile`](./.bash_profile)
* [`.gitconfig`](./.gitconfig)
* [`.gitignore`](./.gitignore) (ignore OS/IDE-specific files globally)
* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) (see repository status in your prompt)
* [`git-completion.bash`](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) (Git completion support)

---

## Tools I no longer use

### [Visual Studio Code](https://code.visualstudio.com/)

Install the following extensions:

* [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

### [Sublime Text](https://www.sublimetext.com/)

Install the following Sublime packages via [**Package Control**](https://packagecontrol.io/):

* [Cobalt2](https://github.com/wesbos/cobalt2)
* [EditorConfig](http://editorconfig.org/)
* [Babel](https://github.com/babel/babel-sublime) (ES6 and JSX syntax highlighting)
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
