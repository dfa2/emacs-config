;;; lang-js.el --- JavaScript / TypeScript / Web -*- lexical-binding: t; -*-

;;; Commentary:
;; Indentation defaults

;;; Code:
(setq-default js-indent-level 2
              typescript-indent-level 2)

;; Company
(use-package company
  :init
  ;; config that doesn't require company to be loaded yet
  (setq company-dabbrev-downcase nil)
  :hook
  ;; enable globally after Emacs has finished init
  (after-init . global-company-mode))

;; Flycheck
(use-package flycheck
  :hook
  (after-init . global-flycheck-mode)
  :config
  (setq flycheck-check-syntax-automatically '(mode-enabled save)
        flycheck-display-errors-delay 0.5)
  ;; we're already in :config, so flycheck is loaded here
  (flycheck-add-mode 'javascript-eslint 'js-mode)
  (flycheck-add-mode 'javascript-eslint 'typescript-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode))

;; Prettier
(use-package prettier
  :hook ((js-mode . prettier-mode)
         (typescript-mode . prettier-mode)
         (web-mode . prettier-mode)))

;; Web-mode
(use-package web-mode
  :mode ("\\.vue\\'" "\\.js\\'" "\\.ts\\'")
  :init
  (setq web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-markup-indent-offset 2))

(provide 'lang-js)
;;; lang-js.el ends here.
