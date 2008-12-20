(defvar dotfiles-dir
  (file-name-directory (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)

(require 'my-ui)

; Put autosave and backup files in one place, not scattered
; around the entire damn system.

(defvar autosave-dir (concat dotfiles-dir "/auto-save-files"))
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
	  (if buffer-file-name (concat "#" (file-name-nondirectory buffer-file-name) "#")
	    (expand-file-name (concat "#%" (buffer-name) "#")))))

(defvar backup-dir (concat dotfiles-dir "/backup-files"))
(setq backup-directory-alist (list (cons "." backup-dir)))
