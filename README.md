# Developer's OS X Fresh Install

This document describes how I set up my development environment on a new MacBook or iMac. 

## System Preferences

**Apple icon > System Preferences:**

* Dock > Automatically hide and show the Dock

## Dev Tools

* [iTerm2](https://www.iterm2.com/)
* [Git](http://git-scm.com/)
* [nvm](https://github.com/creationix/nvm)
* [Sublime Text](https://www.sublimetext.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)
* [Postman](https://www.getpostman.com/)
* [SourceTree](https://www.sourcetreeapp.com/) (cool for seeing `diff`s just like you do in BitBucket Server)

## Sublime Text Plugins

Install the following Sublime packages via [Package Control](https://packagecontrol.io/):

* [Material Theme](https://github.com/equinusocio/material-theme)
* [EditorConfig](http://editorconfig.org/)
* [Babel](https://github.com/babel/babel-sublime) (ES6 and JSX syntax highlighting)
* [SCSS](https://github.com/MarioRicalde/SCSS.tmbundle) (SCSS syntax highlighting)
* [HTML Mustache](https://github.com/adamchainz/SublimeHTMLMustache) (Mustache syntax highlighting)
* [Alignment](https://github.com/wbond/sublime_alignment)
* [DocBlockr](https://github.com/spadgos/sublime-jsdocs)
* [Pretty JSON](https://github.com/dzhibas/SublimePrettyJson)
* [Git Gutter](https://github.com/jisaacks/GitGutter)
* [Bracket Highlighter](https://github.com/facelessuser/BracketHighlighter)
* [SublimeLinter](http://www.sublimelinter.com/)
* [SublimeLinter-contrib-eslint](https://github.com/roadhump/SublimeLinter-eslint) (dependency: `npm install -g eslint`)
* [SublimeLinter-contrib-sass-lint](https://github.com/skovhus/SublimeLinter-contrib-sass-lint) (dependency: `npm install -g sass-lint`)

## Misc Tools

* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)
* [Spectacle](https://www.spectacleapp.com/) (set it up to start on login)
* [f.lux](https://justgetflux.com/)

## Configuration Files and Git Scripts

Place these scripts on your home (`~`) directory:

* [`.bash_profile`](./.bash_profile)
* [`.gitconfig`](./.gitconfig)
* [See repository status in your prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
* [Git completion support](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)

## Workspace

```
mkdir ~/workspace
```

## Built-in Local Apache Server

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
