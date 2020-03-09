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
  (org-journal-file-format "%Y%m%d.org")
  )
