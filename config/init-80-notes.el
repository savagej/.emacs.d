;;; init-80-notes.el ---

;;; Author: John Savage
;;; Created 22 Feb 2020

(require 'deft)
(use-package deft
  :bind ("C-c d" . deft)
  :commands (deft)
  :config (setq deft-directory "~/Dropbox/Orgzly/notes"
                deft-extensions '("org" "txt" "md")
		deft-default-extension "org"
		deft-text-mode 'org-mode
                deft-org-mode-title-prefix t
                ;deft-use-filename-as-title t
		deft-use-filter-string-for-filename t
		)
  )
(global-set-key (kbd "C-x C-g") 'deft-find-file)
