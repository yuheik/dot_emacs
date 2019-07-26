(use-package markdown-preview-mode
  :mode "\\.md\\'"
  :config (progn
            ;; (setq markdown-preview-stylesheets (list "github.css"))
            (setq markdown-command "/usr/local/bin/pandoc")
            ))
