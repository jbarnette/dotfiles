(deftheme jbarnette-twilight
  "My Emacs 24 version of Twilight, with tweaks.")

(custom-theme-set-faces 'jbarnette-twilight
  '(default ((t (:background "#141414" :foreground "#CACACA" :family "Monaco" :height 130))))

  '(blue ((t (:foreground "blue"))))
  '(border-glyph ((t (nil))))
  '(buffers-tab ((t (:background "#141414" :foreground "#CACACA"))))
  '(font-lock-builtin-face ((t (:foreground "#CACACA"))))
  '(font-lock-comment-face ((t (:foreground "#5F5A60"))))
  '(font-lock-constant-face ((t (:foreground "#CF6A4C"))))
  '(font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
  '(font-lock-function-name-face ((t (:foreground "#9B703F"))))
  '(font-lock-keyword-face ((t (:foreground "#CDA869"))))
  '(font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
  '(font-lock-reference-face ((t (:foreground "SlateBlue"))))

  ;; Enhanced-Ruby-Mode
  '(ruby-string-delimiter-face  ((t (:foreground "#5A6340"))))
  '(ruby-regexp-delimiter-face ((t (:foreground "orange"))))
  '(ruby-heredoc-delimiter-face ((t (:foreground "#9B859D"))))
  '(ruby-op-face ((t (:foreground "#CDA869"))))

  '(font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
  '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))

  '(minibuffer-prompt ((t (:foreground "#5F5A60"))))
  '(ido-subdir ((t (:foreground "#CF6A4C"))))
  '(ido-first-match ((t (:foreground "#8F9D6A"))))
  '(ido-only-match ((t (:foreground "#8F9D6A"))))
  '(mumamo-background-chunk-submode ((t (:background "#222222")))) 

  '(linum ((t (:background "#141314" :foreground "#2D2B2E"))))
  '(hl-line ((t (:background "#212121"))))  
  '(region ((t (:background "#373446"))))
  '(yas/field-highlight-face ((t (:background "#27292A"))))
  '(mode-line ((t (:background "grey75" :foreground "black" :height 0.8))))
  '(mode-line-inactive ((t (:background "grey10" :foreground "grey40" :box (:line-width -1 :color "grey20") :height 0.8))))

  '(magit-item-highlight ((t (:background "#191930"))))
  '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))))
  '(org-hide ((((background dark)) (:foreground "#141414"))))
  '(outline-4 ((t (:foreground "#8F8A80"))))

  '(diff-removed ((((class color) (background dark)) (:foreground "orange"))))
  '(diff-added ((((class color) (background dark)) (:foreground "green"))))

  '(font-lock-string-face ((t (:foreground "#8F9D6A"))))
  '(font-lock-type-face ((t (:foreground "#9B703F"))))
  '(font-lock-variable-name-face ((t (:foreground "#7587A6"))))
  '(font-lock-warning-face ((t (:background "#EE799F" :foreground "red"))))
  '(gui-element ((t (:background "#D4D0C8" :foreground "black"))))
  '(region ((t (:background "#27292A"))))
  '(highlight ((t (:background "#111111"))))
  '(highline-face ((t (:background "SeaGreen"))))
  '(left-margin ((t (nil))))
  '(text-cursor ((t (:background "yellow" :foreground "black"))))
  '(toolbar ((t (nil))))
  '(underline ((nil (:underline nil))))
  '(zmacs-region ((t (:background "snow" :foreground "blue")))))

(set-fringe-mode 0)

(provide-theme 'jbarnette-twilight)
