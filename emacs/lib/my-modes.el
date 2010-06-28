(autoload 'markdown-mode "markdown-mode/markdown-mode.el" nil t)

(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(autoload 'haml-mode "haml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . haml-mode))

(provide 'my-modes)
