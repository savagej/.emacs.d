;;; init-80-notes.el ---

;;; Author: John Savage
;;; Created 22 Feb 2020

; (require 'deft)
(use-package deft
  :after org
  :bind ("C-c n d" . deft)
  :commands (deft)
  :config (setq deft-directory "~/Dropbox/Orgzly/notes"
                deft-extensions '("org" "txt" "md")
		deft-default-extension "org"
		deft-text-mode 'org-mode
                deft-org-mode-title-prefix t
                deft-use-filename-as-title t
		;deft-use-filter-string-for-filename t
		deft-recursive t
		;deft-strip-summary-regexp ":PROPERTIES:\n\\(.+\n\\)+:END:\n"
		)
  )
  (evil-set-initial-state 'deft-mode 'emacs)
(global-set-key (kbd "C-x C-g") 'deft-find-file)
