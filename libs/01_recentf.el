(use-package recentf
  :init
  (setq recentf-max-saved-items 2000) ;; save max 2000 histories
  (setq recentf-auto-cleanup 'never)  ;; Do no remove list automatically
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (setq recentf-exclude '("/recentf"
                          "COMMIT_EDITMSG"))
  :config
  (recentf-mode 1)
  :bind
  (
   ;; ("C-x F" . recentf-open-files)
   ("C-x F" . helm-recentf)
   )
  )
