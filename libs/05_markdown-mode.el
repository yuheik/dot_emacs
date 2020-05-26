(use-package markdown-preview-mode
  :mode "\\.md\\(wn\\)?"
  :config (progn
            ;; (setq markdown-preview-stylesheets (list "github.css"))
            (setq markdown-command "/usr/local/bin/pandoc")
            (add-hook 'before-save-hook nil))
  :bind (:map markdown-mode-map
              ("M-C-f" . markdown-demote)
              ("M-C-b" . markdown-promote))
  )
