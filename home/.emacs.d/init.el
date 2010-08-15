(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

(require 'package)
(package-initialize)

; (require 'cl)
; (require 'saveplace)
; (require 'ffap)
; (require 'uniquify)
; (require 'ansi-color)
; (require 'recentf)

(require 'bindings)
(require 'theme)

(load custom-file 'noerror)