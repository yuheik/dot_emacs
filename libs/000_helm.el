(use-package helm
  :bind
  (("C-x c"   . nil)                    ; unset
   ("C-c h"   . helm-command-prefix)
   ("C-x C-f" . helm-find-files)
   ("C-x rl"  . helm-bookmarks)
   ;; ("C-x b"   . helm-buffers-list)
   ("C-x i"   . helm-imenu)
   ("C-x F"   . helm-recentf)
   ("C-x g"   . helm-google-suggest)
   :map helm-map
   ("<tab>" . helm-execute-persistent-action)
   ("C-i"   . helm-execute-persistent-action)
   ("C-h"   . delete-backward-char)
   ("C-z"   . helm-select-action)
   )
  :config
  (helm-mode 1)
  (helm-autoresize-mode 1)
  (setq helm-split-window-inside-p            t) ; open helm buffer inside current window, not occupy whole other window
  (setq helm-move-to-line-cycle-in-source     t) ; move to end or beginning of source when reaching top or bottom of source.
  (setq helm-ff-search-library-in-sexp        t) ; search for library in `require' and `declare-function' sexp.
  (setq helm-scroll-amount                    8) ; scroll 8 lines other window using M-<next>/M-<prior>
  (setq helm-ff-file-name-history-use-recentf t)
  (setq helm-echo-input-in-header-line t)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 40)
  ;; (when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t)
  ;; )
  )
