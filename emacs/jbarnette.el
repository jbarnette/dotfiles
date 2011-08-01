(put 'erase-buffer 'disabled nil)

(global-set-key (kbd "C-x f") 'find-file-at-point)
(global-set-key (kbd "C-x m") 'magit-status)
(global-set-key (kbd "M-s")   'fixup-whitespace)

(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(defun jbarnette-coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (jbarnette-coffee-custom)))

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq ring-bell-function 'ignore)
(rvm-use-default)

(setenv "PAGER" "/bin/cat")
(server-start)
