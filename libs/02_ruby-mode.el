;;; Alignment rules for Ruby
;;; Originals from http://d.hatena.ne.jp/rubikitch/20080227/1204051280
;;; And copied from https://github.com/jimweirich/emacs-setup-esk/blob/master/ruby-align.el

(use-package ruby-mode
  :mode "\\.rb\\'"
  :interpreter "ruby"
  :config (progn
            (require 'align)
            (add-to-list 'align-rules-list
                         '(ruby-comma-delimiter
                           (regexp . ",\\(\\s-*\\)[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))

            (add-to-list 'align-rules-list
                         '(ruby-hash-literal
                           (regexp . "\\(\\s-*\\)=>\\s-*[^# \t\n]")
                           (group 2 3)
                           (repeat . t)
                           (modes  . '(ruby-mode))))

            (add-to-list 'align-rules-list
                         '(ruby-hash-literal2
                           (regexp . "[a-z0-9]:\\(\\s-*\\)[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))

            (add-to-list 'align-rules-list
                         '(ruby-assignment-literal
                           (regexp . "\\(\\s-*\\)=\\s-*[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))

            (add-to-list 'align-rules-list
                         '(ruby-xmpfilter-mark
                           (regexp . "\\(\\s-*\\)# => [^#\t\n]")
                           (repeat . nil)
                           (modes  . '(ruby-mode))))))
