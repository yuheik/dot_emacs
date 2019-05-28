;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Default Packages

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; straight.el
;; https://github.com/raxod502/straight.el

;; ;; Bootstrap
;; (let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
;;       (bootstrap-version 3))
;;   (unless (file-exists-p bootstrap-file)
;;     (with-current-buffer
;;         (url-retrieve-synchronously
;;          "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
;;          'silent 'inhibit-cookies)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp)))
;;   (load bootstrap-file nil 'nomessage))

;; ;; Integration with "use-package"
;; (straight-use-package 'use-package)
;; (setq straight-use-package-by-default t)

;; ;; Install and use "init-loader"
;; (use-package init-loader)
;; (custom-set-variables '(init-loader-show-log-after-init 'error-only))
;; (init-loader-load "~/.emacs.d/my/libs")    ; load files there on launch


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Since having trouble on setting up straight.el,
;; set up related modules respectively.

(require 'use-package)
(require 'init-loader)
(init-loader-load "~/.emacs.d/dot_emacs/libs")
(init-loader-show-log)
