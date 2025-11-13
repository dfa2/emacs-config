;;; lang-python.el --- Python development -*- lexical-binding: t; -*-

;; Indentation defaults (PEP 8)
(setq python-indent-offset 4)

;; Company: completion in Python buffers
(use-package company
  :hook
  (python-mode . company-mode)
  :config
  ;; Don't force lowercase for dabbrev completions
  (setq company-dabbrev-downcase nil))

;; Flycheck: on-the-fly syntax checking
(use-package flycheck
  :hook
  (python-mode . flycheck-mode)
  :config
  (setq flycheck-check-syntax-automatically '(mode-enabled save)
        flycheck-display-errors-delay 0.5)
  ;; Use flake8 / pylint / mypy etc. as you prefer.
  ;; Example: prefer flake8 if available
  ;; (setq flycheck-python-flake8-executable "flake8")
  )

;; Black: code formatting (like prettier for JS)
(use-package blacken
  :hook
  (python-mode . blacken-mode)
  :custom
  (blacken-line-length 88))  ;; common default; tweak if you like

;; Optional: isort for imports (uncomment if you want it)
;; (use-package py-isort
;;   :hook
;;   (before-save . py-isort-before-save))

(provide 'lang-python)
;;; lang-python.el ends here
