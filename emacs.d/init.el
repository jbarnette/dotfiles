(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      clojure-mode
                      coffee-mode
                      markdown-mode
                      peepopen
                      puppet-mode
                      starter-kit-bindings
		      starter-kit-js
		      starter-kit-lisp
		      starter-kit-ruby
                      starter-kit
                      textmate
                      window-number
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
