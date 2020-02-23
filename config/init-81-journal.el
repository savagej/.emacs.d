;;; init-81-journal.el

;;; Author: John Savage
;;; Created 23 Feb 2020

(require 'org-journal)
(use-package org-journal
  :bind ("C-c j" . org-journal-new-entry)
  :ensure t
  :defer t
  :custom
  (org-journal-dir "~/Dropbox/Orgzly/journal/")
  ;(org-journal-date-format "%A, %d %B %Y")
  )
;(global-set-key (kbd "C-x j") 'org-journal-new-entry)
