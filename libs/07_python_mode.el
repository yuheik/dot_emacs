;;; Alignment rules for Ruby
;;; Originals from http://d.hatena.ne.jp/rubikitch/20080227/1204051280
;;; And copied from https://github.com/jimweirich/emacs-setup-esk/blob/master/ruby-align.el

(use-package python-mode
  :mode "\\.py\\'"
  :interpreter "python"
  :config (progn
            (setq indent-tabs-mode nil)
            (setq py-indent-offset 4)
            (setq indent-level 4)
            ))
