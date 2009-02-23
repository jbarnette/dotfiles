(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'color-theme)
(load-file (concat dot-dir "/vendor/twilight-emacs/color-theme-twilight.el"))
(color-theme-twilight)

(setq default-frame-alist
      '((font . "-apple-anonymous-medium-r-normal--11-160-72-72-m-160-iso10646-1")))

(global-font-lock-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq inhibit-startup-message t)

(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(setq resize-minibuffer-mode t)

;; i like erase-buffer
(put 'erase-buffer 'disabled nil)

;; wrap
(setq truncate-partial-width-windows nil)

;; no tabs, just spaces
(setq-default indent-tabs-mode nil)

;; deemphasize parens in lisp
(require 'parenface)

;; mark tabs, trailing spaces, and long lines

(custom-set-faces
 '(my-tab-face            ((((class color)) (:background "grey10"))) t)
 '(my-trailing-space-face ((((class color)) (:background "gray10"))) t)
 '(my-long-line-face ((((class color)) (:background "gray10"))) t))

(add-hook 'font-lock-mode-hook
          (function
           (lambda ()
             (setq font-lock-keywords
                   (append font-lock-keywords
                           '(("\t+" (0 'my-tab-face t))
                             ("^.\\{81,\\}$" (0 'my-long-line-face t))
                             ("[ \t]+$"      (0 'my-trailing-space-face t))))))))

;; pulse the current line after certain operations
(require 'pulse)
(pulse-toggle-integration-advice t)

(provide 'my-ui)
