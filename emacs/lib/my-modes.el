(autoload 'markdown-mode (concat vendor-dir "/markdown-mode/markdown-mode.el")
  "Major mode for editing Markdown files" t)

(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(provide 'my-modes)
