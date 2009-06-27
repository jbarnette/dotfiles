(global-set-key (kbd "C-M-h")        'backward-kill-word)
(global-set-key (kbd "C-.")          'jbarnette-ido-goto-symbol)
(global-set-key (kbd "C-<return>")   'jbarnette-next-line)
(global-set-key (kbd "C-M-<return>") 'jbarnette-prev-line)
(global-set-key (kbd "C-X f")        'find-file-at-point)

(require 'toggle)
(global-set-key (kbd "C-x C-t") 'toggle-buffer)
(setq toggle-mappings (toggle-style 'rails))

(require 'bs)
(global-set-key (kbd "C-x C-b") 'bs-show)

(require 'window-number)
(window-number-meta-mode 1)

(provide 'my-bindings)
