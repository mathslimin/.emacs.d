[简体中文版本](./README.zh-CN.md)

# About this project

## About Programming language

I mainly use [Python](https://www.python.org/) & [Go](https://golang.org/) in my work.  So I set up the programming environments for this two languages with [LSP](https://emacs-lsp.github.io/lsp-mode/) - the protocol from Microsoft.  If you use other languages, such as JavaScript, C++, and so on, you can easily set up for them with LSP - sometimes you just install the language servers, Emacs config code does NOT need to change.

## About the default FONT
I use Courier & SimKai, 'cause they are the only fonts not make my Windows version slow, change the `lisp/init-ui.el` to your preferences, if you do NOT use CJK fonts.

## Installation

Launch a terminal, such as:

- `Terminal` App or `iTerm2` on macOS
- `GNOME Terminal` or `Konsole` on GNU/Linux
- `CMD` or `PowerShell` or `Windows Terminal` on Windows 10

Run the code below, and then launch your Emacs, enjoy it.

```bash
git clone https://github.com/mathslimin/.emacs.d ~/.emacs.d
```
### install dependency
```bash
sudo apt install nodejs npm
sudo npm install -g bash-language-server
```
install java-lsp-server, Below configuration is based on https://github.com/emacs-lsp/lsp-java#quick-start
```bash
mkdir -p .emacs.d/server/java/jdt-language-server
cd .emacs.d/server/java
wget https://download.eclipse.org/jdtls/milestones/1.5.0/jdt-language-server-1.5.0-202110191539.tar.gz
tar zxvf jdt-language-server-1.5.0-202110191539.tar.gz -C jdt-language-server
ls ~/.emacs.d/server/java/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar
```

> Note: If you use Windows 10,  you should set an environment variable named `HOME`,  and set its value to your user directory,  like `C:/Users/<your_name>`. Otherwise emacs will use `%Appdata%` as home directory by default.
### start mini
emacs -Q -l early-init.el

## Testing

This project is tested on

- macOS,  11.1,  GUI mode
- Windows 10 (Native GUI & msys2)
- Ubuntu 20.04.1 

it should run on other platforms, please note that.

## About bugs

Any issue will be welcomed, just send me an issue if you find something not friendly to you.
