;; Settings which requires no additional packages.

;; Backup Files
(setq backup-directory-alist '((".*" . "~/.emacs.d/backups")))

;; Key Bindings
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-h" 'backward-kill-word)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-*" 'align)
(global-set-key "\M-+" 'align-regexp)
(global-set-key "\M-`" 'indent-region)
(global-set-key "\M-w" 'my-copy-word-at-point) ; from my-lib.el

;; grep-find command
(require 'grep)
(grep-apply-setting 'grep-find-command "find . -type f ! -name '*.map' ! -path '*/build/*'  ! -path '*/app/build/*' ! -path '*/node_modules/*' ! -path '*/ios/Pods/*' ! -path '*/ios/build/*' ! -path '*/android/app/build/*' ! -path '*/__test__/*' -exec grep -nH -e   \\{\\} +")

;; Search
(setq dabbrev-case-fold-search t) ; nil : distinguish upper/lower case | t : not distinguish
(define-key isearch-mode-map "\M-w" 'my-isearch-yank-word-at-point) ; from my-lib.el

;; Completion
(setq completion-ignore-case t)

;; Dired
; (setq dired-use-ls-dired nil)
; (setq dired-listing-switches "-alhS")    ; show file size with human readable format, sort by file size.
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

;; Ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

;; Others
(defalias 'yes-or-no-p 'y-or-n-p)   ; Yes/No

;; On Save
(add-hook 'before-save-hook 'my-cleanup-file)
