(deftheme pastels
  "Created 2010-02-20.")

(custom-theme-set-faces
 'pastels
 '(default ((t (:family "Terminus" :foundry "xos4" :width normal :height 108 :weight normal :slant normal :foreground "#dcdccd" :background "#2c2c2c"))))
 '(cursor ((t (:background "#dcdccd" :foreground "#2c2c2c"))))
 '(org-hide ((t (:foreground "#2c2c2c")))))

(custom-theme-set-variables
 'pastels
 '(frame-background-mode 'dark)
 '(rst-level-face-base-color "#2c2c2c"))

(provide-theme 'pastels)

