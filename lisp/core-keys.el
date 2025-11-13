;;; core-keys.el --- Keymaps & prefixes -*- lexical-binding: t; -*-

;; Reserve a prefix for “my stuff” (scales later)
(define-prefix-command 'my-ai-map)
(global-set-key (kbd "C-c a") 'my-ai-map)

(provide 'core-keys)
