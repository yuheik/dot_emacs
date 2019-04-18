;; Settings which requires no additional packages.

;; Theme
(load-theme 'tango-dark t)

;; Window
(setq
 default-frame-alist '((top    . 0)   (left   . 0)
		       (width  . 160) (height . 60)
		       (alpha  . 95)))
(tool-bar-mode 0)
(set-scroll-bar-mode nil)
(setq ring-bell-function 'ignore)       ;disable visible bell. both flush and bell.
(setq-default indent-tabs-mode nil)


;; Backup Files
(setq backup-directory-alist '((".*" . "~/.emacs.d/backups")))


;; Key Bindings
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-h" 'backward-kill-word)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-*" 'align)
(global-set-key "\M-+" 'align-regexp)


;; Dired
(setq dired-use-ls-dired nil)


;; Ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)


;; Others
(defalias 'yes-or-no-p 'y-or-n-p) ; Yes/No
(show-paren-mode t)               ; show matching pairs of parentheses

; Clear redundant
(defun my-cleanup-for-spaces ()
  (interactive)
  (delete-trailing-whitespace)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines))))

(add-hook 'before-save-hook 'my-cleanup-for-spaces)
