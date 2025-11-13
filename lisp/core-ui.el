;; core-ui.el --- Visuals & UX -*- lexical-binding: t; -*-

;; Frame appearance
(add-to-list 'default-frame-alist '(undecorated . t))
(add-to-list 'default-frame-alist '(internal-border-width . 10)) ;; optional padding

(set-face-attribute 'default nil
                    :font "JetBrainsMono Nerd Font"
                    :height 110)  ;; adjust size

;; Doom modeline
(use-package doom-modeline
  :ensure t
  :init
  ;; optional tweaks before it starts
  (setq doom-modeline-height 15
        doom-modeline-bar-width 3
        doom-modeline-icon t)
  :hook
  (after-init . doom-modeline-mode))

;; Doom theme
(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-one t))

;; Nerd font
(setq nerd-icons-font-family "JetBrainsMono Nerd Font")


;; Nyan cat in the mode line
(use-package nyan-mode
  :init
  (nyan-mode 1)
  (nyan-start-animation))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package visual-fill-column
  :hook (markdown-mode . visual-fill-column-mode))

;; Swiper for isearch replacement
(use-package swiper
  :bind (("C-s" . swiper)))

(provide 'core-ui)
