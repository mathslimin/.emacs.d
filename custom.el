(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(restclient quickrun yaml-mode protobuf-mode markdown-mode json-mode typescript-mode web-mode emmet-mode rust-mode go-mode eglot yasnippet-snippets yasnippet highlight-parentheses rainbow-delimiters which-key popwin org-superstar neotree move-dup info-colors iedit gnu-elpa-keyring-update format-all exec-path-from-shell crux ctrlf company auto-package-update delight diminish use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun compile-and-run-c ()
  "Compile and run the current C file."
  (interactive)
  (compile (concat "gcc -I../include -I../../include -lm -lpthread -L../lib -o /tmp/cdebug.exe" " " buffer-file-name " && " "/tmp/cdebug.exe" )))
(global-set-key (kbd "C-c C-r") 'compile-and-run-c)
(global-set-key (kbd "<f5>") 'compile-and-run-c)
