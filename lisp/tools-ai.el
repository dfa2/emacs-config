;;; tools-ai.el --- GPTel config -*- lexical-binding: t; -*-


;;; Code.
(use-package gptel
  :init
  (setq gptel-api-key (getenv "OPENAI_API_KEY")
        gptel-model   "gpt-4o-mini"))

;; Keys under your AI prefix
(define-key my-ai-map (kbd "g") #'gptel)
(define-key my-ai-map (kbd "s") #'gptel-send)


(provide 'tools-ai)
