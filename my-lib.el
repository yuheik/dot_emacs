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

; Remove trailing-whitespace and redundant blank lines at the eof.
(defun my-cleanup-file ()
  (interactive)
  (delete-trailing-whitespace)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines))))
