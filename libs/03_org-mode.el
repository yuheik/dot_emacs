(use-package org
  :config
  (setq org-startup-folded "#+STARTUP: showeverything")
  :bind
  (("M-C-f" . org-metaright)
   ("M-C-b" . org-metaleft)
   ("C-c o" . org-open-at-point)))
