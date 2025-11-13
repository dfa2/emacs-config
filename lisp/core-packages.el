;;; core-packages.el --- Package management -*- lexical-binding: t; -*-
;;; Commentary:
;; Core packages that should always be loaded


;;; Code:
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-quickstart t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t    ; auto-install
      use-package-always-defer t)    ; defer by default, override per package


(provide 'core-packages)
;;; core-packages.el ends here
