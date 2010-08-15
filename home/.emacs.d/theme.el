(add-to-list 'load-path "~/.emacs.d/vendor/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/vendor/color-theme-railscasts/color-theme-railscasts.el")
(color-theme-railscasts)

(provide 'theme)