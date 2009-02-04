(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'color-theme)
(load-file (concat dot-dir "/vendor/twilight-emacs/color-theme-twilight.el"))
(color-theme-twilight)

(setq default-frame-alist
      '((font . "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1")))

(global-font-lock-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq inhibit-startup-message t)

(setq frame-title-format "%b")
(setq resize-minibuffer-mode t)

;; wrap
(setq truncate-partial-width-windows nil)

;; no tabs, just spaces
(setq indent-tabs-mode nil)

;; deemphasize parens in lisp
(require 'parenface)

(provide 'my-ui)
