;;; core-keys.el --- Keymaps & prefixes -*- lexical-binding: t; -*-

;;; Commentary:
;; Reserve a prefix for “my stuff” (scales later)

;;; Code:
(define-prefix-command 'my-ai-map)
(global-set-key (kbd "C-c a") 'my-ai-map)

(provide 'core-keys)

;;; core-keys.el ends here
