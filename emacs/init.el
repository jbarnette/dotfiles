(setq dot-dir (file-name-directory load-file-name))
(setq vendor-dir (concat dot-dir "/vendor"))
(setq lib-dir (concat dot-dir "/lib"))

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

(require 'toggle)
(global-set-key (kbd "C-x C-t") 'toggle-buffer)
(toggle-style "rails")

(require 'my-bindings)
(require 'my-defuns)
(require 'my-ui)
(require 'my-integration)
(require 'my-loading-and-saving)
(require 'my-modes)
(require 'my-navigation)
(require 'my-ruby)
(require 'my-scm)
