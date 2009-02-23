(autoload 'markdown-mode "markdown-mode/markdown-mode.el" nil t)

(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'my-modes)
