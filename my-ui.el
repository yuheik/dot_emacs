;; Theme
(load-theme 'tango-dark t)

;; Window
(setq
 default-frame-alist '((top    . 0)   (left   . 0)
		       (width  . 160) (height . 60)
		       (alpha  . 95)))
(tool-bar-mode 0)
(set-scroll-bar-mode nil)
(setq ring-bell-function 'ignore) ;disable visible bell. both flush and bell.

;; Mode Line
(setq line-number-mode t)
(setq column-number-mode t)


;; Note. Require font "Ricty"
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Ricty")))))
