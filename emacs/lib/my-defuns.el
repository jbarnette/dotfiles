;; goto symbol
(require 'imenu)

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

;; I miss TextMate's command-newline behavior
(defun jbarnette-next-line ()
  (interactive)
  (end-of-line)
  (newline-and-indent))

(defun jbarnette-recompile-init ()
  (interactive)
  (byte-recompile-directory dot-dir 0))

(provide 'my-defuns)
