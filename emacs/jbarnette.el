(put 'erase-buffer 'disabled nil)

(global-set-key (kbd "C-x f") 'find-file-at-point)
(global-set-key (kbd "C-x m") 'magit-status)
(global-set-key (kbd "M-s")   'fixup-whitespace)

(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(setenv "PAGER" "/bin/cat")
(server-start)
