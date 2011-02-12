(require 'imenu)

; from defunkt
(defun jbarnette-clean-slate ()
  "Kill all but a few fundamental buffers."
  (interactive)

  (let ((buffers (buffer-list)) (safe '("*scratch*")))
    (while (not (eq nil buffers))
      (when (not (member (car buffers) safe))
        (kill-buffer (car buffers))
        (setq buffers (cdr buffers))))))

(defun jbarnette-ido-goto-symbol ()
  "Will update the imenu index and then use ido to select a symbol to navigate to"
  (interactive)
  (imenu--make-index-alist)
  (let ((name-and-pos '())
        (symbol-names '()))
    (flet ((addsymbols (symbol-list)
                       (when (listp symbol-list)
                         (dolist (symbol symbol-list)
                           (let ((name nil) (position nil))
                             (cond
                              ((and (listp symbol) (imenu--subalist-p symbol))
                               (addsymbols symbol))

                              ((listp symbol)
                               (setq name (car symbol))
                               (setq position (cdr symbol)))

                              ((stringp symbol)
                               (setq name symbol)
                               (setq position (get-text-property 1 'org-imenu-marker symbol))))

                             (unless (or (null position) (null name))
                               (add-to-list 'symbol-names name)
                               (add-to-list 'name-and-pos (cons name position))))))))
      (addsymbols imenu--index-alist))
    (let* ((selected-symbol (ido-completing-read "Goto: " symbol-names))
           (position (cdr (assoc selected-symbol name-and-pos))))
      (goto-char position))))

(defun jbarnette-next-line ()
  (interactive)
  (end-of-line)
  (newline-and-indent))

(defun jbarnette-prev-line ()
  (interactive)
  (beginning-of-line)
  (newline)
  (previous-line)
  (indent-according-to-mode))

(defun jbarnette-air ()
  "Resize, split, and position for the MacBook Air (or similar)."
  (interactive)
  (delete-other-windows)
  (set-frame-position (selected-frame) 2 22)
  (set-frame-size (selected-frame) 164 53)
  (split-window-horizontally)
  (ns-toggle-fullscreen))

(defun jbarnette-recompile-init ()
  "Recompiles all the files under my .emacs.d"
  (interactive)
  (byte-recompile-directory dot-dir 0))

(defun jbarnette-init ()
  "Edit my init.el"
  (interactive)
  (find-file (concat dot-dir "/init.el")))

(provide 'my-defuns)
