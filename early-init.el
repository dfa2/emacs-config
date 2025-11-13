;;; early-init.el --- Early startup tweaks -*- lexical-binding: t; -*-

;; Emacs 27+: don’t auto-enable package.el here; we do it manually later
(setq package-enable-at-startup nil)

;; Optional native-comp tweak (matches your current setting)
(setq native-comp-deferred-compilation nil)

;; UI early (faster startup / less flicker)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Speed up a bit by raising GC thresholds during init
(setq gc-cons-threshold (* 128 1024 1024)
      gc-cons-percentage 0.6)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 20 1024 1024)
                  gc-cons-percentage 0.1)))

(provide 'early-init)




