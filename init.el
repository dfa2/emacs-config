;;; init.el --- Loader -*- lexical-binding: t; -*-

;; Keep Customize out of your hand-edited files
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror)

(add-to-list 'load-path (locate-user-emacs-file "~/.config/emacs/lisp"))

(require 'core-packages)  ; package el + use-package bootstrap
(require 'core-ui)        ; theme, modeline, UI goodies
(require 'core-keys)      ; global keymaps & prefixes
(require 'tools-ai)       ; gptel setup and keys
(require 'lang-js)        ; JS/TS/Vue tools
(require 'lang-python)    ; Python tools

;; Optional machine-local overrides (not in VCS)
(load (locate-user-emacs-file "lisp/local.el") 'noerror)

;; Start nice-to-have global minor modes here if you like
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(display-time-mode 1)

(provide 'init)
