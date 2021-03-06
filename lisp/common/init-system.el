;;; init-system.el --- configs for startup -*- lexical-binding: t -*-
;;; Commentary:
;; (c) Cabins Kong, 2022-

;;; Code:

;;; flymake cannot find load-path solution
;; [refs] https://emacs-china.org/t/flymake/8323/19
(setq elisp-flymake-byte-compile-load-path
      (append elisp-flymake-byte-compile-load-path load-path))

;;; system coding
;; although others may add many other settings here,
;; but I think the next line is enough
(prefer-coding-system 'utf-8)

;;; emacs settings
(setq auto-window-vscroll nil
      help-window-select t
      inhibit-startup-screen t	   ; disable the startup screen splash
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      ;; initial-scratch-message nil
      make-backup-files nil             ; disable backup file
      next-line-add-newlines nil
      read-process-output-max (* 64 1024)
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position t
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      visible-bell nil)

(if (fboundp 'pixel-scroll-precision-mode)
    (pixel-scroll-precision-mode)
  (pixel-scroll-mode))

;;projectile config https://github.com/bbatsov/projectile
;; (projectile-mode +1)
;; ;; Recommended keymap prefix on macOS
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; ;; Recommended keymap prefix on Windows/Linux
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-system)
;;; init-system.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
