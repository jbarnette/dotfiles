(setq dot-dir (file-name-directory load-file-name))

(setq vendor-dir (concat dot-dir "/vendor"))
(setq lib-dir (concat dot-dir "/lib"))

; FIXME: explicit-shell-file-name to load .profile

(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path lib-dir)

(setq running-osx (or (featurep 'mac-carbon) (eq 'ns window-system)))

(if (and running-osx (not (member "/Users/jbarnette/bin" exec-path)))
    ;; deal with OSX's wonky enivronment by forcing PATH to be correct.
    ;; argh this is stupid
    (let* ((path   (shell-command-to-string "/bin/bash -lc 'echo -n $PATH'"))
           (cdpath (shell-command-to-string "/bin/bash -lc 'echo -n $CDPATH'"))
           (path-list (split-string path ":" t)))
      (setenv "PATH" path)
      (setenv "CDPATH" cdpath)
      (dolist (p path-list) (add-to-list 'exec-path p t))))

(when (load (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(require 'my-bindings)
(require 'my-defuns)
(require 'my-ui)
(require 'my-integration)
(require 'my-loading-and-saving)
(require 'my-modes)
(require 'my-navigation)
(require 'my-ruby)
(require 'my-scm)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ns-antialias-text t)
 '(ns-command-modifier (quote meta))
 '(ns-use-qd-smoothing nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compilation-error ((t (:inherit nil :background "black" :foreground "red"))))
 '(my-long-line-face ((((class color)) (:background "gray10"))) t)
 '(my-tab-face ((((class color)) (:background "grey10"))) t)
 '(my-trailing-space-face ((((class color)) (:background "gray10"))) t))
