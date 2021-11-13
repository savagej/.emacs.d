(use-package org-roam
      ;:after helm
      :hook
      (after-init . org-roam-mode)
      :init (setq org-roam-v2-ack t) ;; Acknowledge V2 upgrade
      :custom
      (org-roam-directory "~/Dropbox/Orgzly/notes")
      :bind (("C-c n l" . org-roam-buffer-toggle)
        ("C-c n f" . org-roam-node-find)
        ("C-c n g" . org-roam-graph)
        ("C-c n c" . org-roam-capture)
        ;; Dailies
        ("C-c n j" . org-roam-dailies-capture-today)
(:map org-mode-map
                 (("C-c n i" . org-roam-node-insert)
                  ("C-c n o" . org-id-get-create)
                  ("C-c n t" . org-roam-tag-add)
                  ("C-c n a" . org-roam-alias-add)
                  ("C-c n l" . org-roam-buffer-toggle)))
	)
      :config
      (org-roam-db-autosync-mode)
      (require 'helm)
)
