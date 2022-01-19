[English Version](./README.md)

当前的配置中使用的第三方插件有：

- company，用来进行代码补全
- exec-path-from-shell，解决环境变量的问题
- -projectile-，仅Emacs 28以下的版本使用，28使用内置的project
- rainbow-delimiters，彩虹括号（其实这个包也可以删除掉）
- highlight-parentheses，括号高亮
- which-key，按键提示
- yasnippet，代码片段
- crux，一些快捷操作
- hungry-delete，优化的删除操作
- drag-stuff，代码的行、块移动
- format-all，代码格式化
- 编程语言相关
  - lsp-mode / lsp-ui
  - go-mode
  - rust-mode
  - vue-mode
  - web-mode / emmet-mode
  - json-mode
  - markdown-mode
  - protobuf-mode
  - restclient
  - yaml-mode

# 编程语言

使用的是 LSP 来完成配置。你只需要安装 Language Server 的方式来自动完成配置，而不需要额外编写默认配置代码（个性化配置的话还需要特殊写代码）。

# 字体配置

配置文件位于`list/init-fn.el`中。

# 配置安装

通过命令行进行安装，把以下代码粘贴到终端中运行即可：

```bash
git clone https://github.com/mathslimin/.emacs.d ~/.emacs.d
```

> 注意: 如果你使用的是 Windows 平台的话，你需要自行设置一个 HOME 环境变量，否则默认安装到`%AppData%`下。

## 问题排查

> 如果出现乱码

请使用`all-the-icon`进行字体的补全安装。另外如果是Windows的话，请额外安装Symbola。
