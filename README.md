# Developer's OS X Fresh Install

## Dev Tools

* [iTerm2](https://www.iterm2.com/)
* [Seti Theme for iTerm2](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Seti.itermcolors)
* [Solarized Theme for iTerm2](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)
* [Git](http://git-scm.com/)
* [nvm](https://github.com/creationix/nvm)
* [Sublime Text](https://www.sublimetext.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [CyberDuck](https://cyberduck.io/)
* [Sequel Pro](http://www.sequelpro.com/)
* [Postman](https://www.getpostman.com/)
* [SourceTree](https://www.sourcetreeapp.com/)

## Sublime Text Plugins & Settings

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
* [SublimeLinter-contrib-eslint](https://github.com/roadhump/SublimeLinter-eslint)
* [SublimeLinter-contrib-scss-lint](https://github.com/attenzione/SublimeLinter-scss-lint)

Also add the following to your Sublime user preferences:

```
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true
}
```

## Misc

* [The Unarchiver](http://unarchiver.c3.cx/unarchiver)
* [Spectacle](https://www.spectacleapp.com/)
* [f.lux](https://justgetflux.com/)

## Configuration Files

See the `.bash_profile` and `.gitconfig` files attached to this Gist.

## Git Scripts

Place these scripts on your home (`~`) directory:

* [See repository status in your prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
* [Git completion support](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)

## Local Apache Server

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
