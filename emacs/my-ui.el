(tool-bar-mode -1)
(toggle-scroll-bar -1)

(setq frame-title-format "%b")
(setq inhibit-startup-screen t)

(setq default-frame-alist
      '((font . "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1")))

(require 'color-theme)
(when (fboundp 'color-theme-initialize)
  (color-theme-initialize))
(setq color-theme-is-global t)
 
(load-file "~/.emacs.d/color-theme-twilight.el")
(color-theme-twilight)

(provide 'my-ui)
