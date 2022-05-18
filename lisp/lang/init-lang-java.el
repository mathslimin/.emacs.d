;;; init-java.el --- config for java -*- lexical-binding: t -*-
;;; https://issueexplorer.com/issue/emacs-lsp/lsp-java/362
;;; Code:
;;; 
(use-package lsp-java
  :after lsp-mode
  :if (executable-find "mvn")
  :init
  (use-package request :defer t)
  :custom
  (lsp-java-server-install-dir (expand-file-name "~/.emacs.d/server/java/jdt-language-server/"))
  (lsp-java-workspace-dir (expand-file-name "~/.emacs.d/server/java/workspace/")))
(provide 'init-lang-java)
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
;;; init-rust.el ends here
