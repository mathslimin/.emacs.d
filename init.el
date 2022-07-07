;;; init.el --- the entry of emacs config -*- lexical-binding: t -*-
;;; Code:
;;open proxy
;;(setq url-proxy-services
;;            '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;;                      ("http" . "127.0.0.1:3128")
;;                              ("https" . "127.0.0.1:3128")))
;; set the startup default directory, not essential but recommended.
(setq default-directory "~/")

;; update load-path to make customized lisp codes work
(dolist (folder '("common" "lang" "feature" "platform" "version"))
  (push (expand-file-name (format "lisp/%s" folder) user-emacs-directory) load-path))

;; settings depend on emacs version
(require 'init-version)

;; common settings (no dependecies with version/os)
(require 'init-common)

;; different settings depends on os platform
(require 'init-platform)

;; settings for programming languages (include IDE/LSP feature)
(require 'init-lang)

;; other features, such as UI/daemon etc.
(require 'init-feature)

;; DON'T forget to define and load custom file at last
(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
    (load custom-file))
(global-set-key (kbd "C-c /") 'comment-or-uncomment-region) 
(global-set-key (kbd "C-c y") 'clipboard-yank) ;; 将clipboard-yank函数绑定到按键"C-c y上"
(global-set-key (kbd "C-M-q") 'query-replace)
(global-set-key (kbd "<f5>") 'flyspell-mode)
(global-set-key (kbd "C-<f5>") 'linum-mode)
(global-set-key (kbd "C-<right>") 'forward-sentence)
(provide 'init)

;;; init.el ends here
 ;; Local Variables:
;; byte-compile-warnings: (not unresolved obsolete)
;; End:
