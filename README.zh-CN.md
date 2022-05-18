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
### 常用命令
```shell
touch .project
```
### use project
只需在其中创建一个空的 .project 文件
快捷键 C-x p
 - project.el 提供了很多命令来方便在项目中进行操作，这里列举几个常用的：
 - project-remember-projects-under，增加项目
 - project-forget-project，删除项目
 - project-switch-project，切换项目
 - project-compile，执行项目的 compile 命令
 - project-search，在项目中搜索指定关键字
 - project-query-replace-regexp，在项目中执行正则替换
 - project-shell-command，执行 shell 命令
 - project-eshell，在根目录打开 eshell
 - project-dired，在根目录打开 dired
 - project-find-dir，在项目指定目录打开 dired
 - project-switch-to-buffer，切换到项目中已经打开的 buffer

### use projectile
https://phenix3443.github.io/notebook/emacs/modes/projectile-mode.html
官方文档 https://docs.projectile.mx/projectile/usage.html
只需在其中创建一个空的 .projectile 文件。Projectile 的一些特点：

跳转到项目中的文件(c-p-f)。
跳转到项目中当前 point 处所指示的文件(c-p-g)。
跳转到项目中的目录(c-p-d)。
跳转到目录中的文件。
跳转到项目有关的 buffer(c-p-b)。
跳转到项目的测试(c-p-T)。
在同名但不同扩展名的文件间跳转（例如.h 和.cpp）(c-p-a)。
跳转到项目中最近浏览的文件(c-p-e)。
在工作的项目间切换。
关闭项目有关的 buffer(c-p-k)。
在项目范围内替换(c-p-r)。
在项目所有 buffer 中查找出现(c-p-o)。
在项目中查找(c-p-s-g)。
重新生成你项目的 etags 或 gtags：projectile-regenerate-tags (C-c p R)
跳转到tag：projectile-find-tag        (C-c p j)
从tag跳回：pop-tag-mark
在 dired 中访问项目(c-p-D)。
在项目上执行 make。
在项目的根目录执行命令(c-p-!)。
检查脏的存储库。
创建项目设置文件(dir-local-file)(c-p-E)
