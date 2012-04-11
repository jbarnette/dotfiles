;; use command as meta instad of option

(setq ns-command-modifier 'meta)

;; bind find-file-at-point until I write one that supports line nums

(global-set-key (kbd "C-x f") 'find-file-at-point)

;; use Cmd-1...n to switch between windows

(require 'window-number)

(window-number-mode 1)
(window-number-meta-mode 1)

;; fuck you, visual bell

(setq ring-bell-function 'ignore)

;; fuck you, safety

(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))

;; fuck you, whitespace

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; religion

(setq-default indent-tabs-mode nil)

;; religion

(setq whitespace-style '(tabs trailing lines)
      whitespace-line-column 80
      line-number-mode t
      column-number-mode t)

;; religion

(global-whitespace-mode t)

;; shell support

(setenv "PAGER" "/bin/cat")
(server-start)

;; peepopen, open in same frame and use Cmd-T for the shortcut

(textmate-mode)
(setq ns-pop-up-frames nil)
(define-key *textmate-mode-map* [(meta t)] 'peepopen-goto-file-gui)

;; coffeescript

(defun jbarnette-coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (jbarnette-coffee-custom)))
