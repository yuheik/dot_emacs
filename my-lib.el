;; Copy word which cursor is currently pointing
(defun my-copy-word-at-point ()
  (interactive)
  (if (not mark-active)
      (progn
        (kill-new (current-word))
        (message  (current-word)))
    (kill-ring-save (mark) (point))))

;; Search word which cursor is currently pointing
(defun my-isearch-yank-word-at-point ()
  (interactive)
  (skip-syntax-backward "w")
  (isearch-mode t)
  (isearch-yank-word-or-char))
