;;; init.el --- Initialization code for emacs

;; Copyright (c) 2015 Gregory J Stein

;; Author: Gregory J Stein <gregory.j.stein@gmail.com>
;; Maintainer: Gregory J Stein <gregory.j.stein@gmail.com>
;; Created: 20 Aug 2015

;; Keywords: configuration
;; Homepage: https://github.com/gjstein/emacs.d

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.

;;; Commentary:
;; Calls my Emacs configuration files after installing use-package, which is
;; necessary for operation.  See also:
;;      http://www.cachestocaches.com/2015/8/getting-started-use-package/
;;
;; Code inspired by:
;;      http://stackoverflow.com/a/10093312/3672986
;;      http://www.lunaryorn.com/2015/01/06/my-emacs-configuration-with-use-package.html
;;      https://github.com/jwiegley/use-package

;;; Code:

;; User Info
(setq user-full-name "John Savage")
(setq user-mail-address "john@johnsavage.net")

;; Install use-package if necessary
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives (append package-archives
			       '(
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")
			 ;;("marmalade" . "http://marmalade-repo.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ;; ("org" . "http://orgmode.org/elpa/")
			 ("elpy" . "http://jorgenschaefer.github.io/packages/"))))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable use-package
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

;; Increase garbage collection threshold to 500 MB to ease startup
;; (Don't do this for now!  It was causing my agenda mode to crawl)
;; (setq gc-cons-threshold (* 500 1024 1024))

;; Set the path variable
;;(use-package exec-path-from-shell
;;  :ensure t
;;  :config (exec-path-from-shell-initialize))

;; === Face Customization ===
(load-file "~/.emacs.d/config/init-10-face.el")

;; === Interface ===
(load-file "~/.emacs.d/config/init-20-nav-interface.el")

;; === Document Editing ===
(load-file "~/.emacs.d/config/init-30-doc-gen.el")
(load-file "~/.emacs.d/config/init-31-doc-org.el")

;; === Programming & Coding Functions ===
;; (load-file "~/.emacs.d/config/init-40-coding-gen.el")
;; (load-file "~/.emacs.d/config/init-41-coding-c-cpp.el")
;; (load-file "~/.emacs.d/config/init-42-coding-web.el")
;; (load-file "~/.emacs.d/config/init-43-coding-matlab.el")
;; (load-file "~/.emacs.d/config/init-44-coding-python.el")
;; (load-file "~/.emacs.d/config/init-45-coding-ROS.el")
;; (load-file "~/.emacs.d/config/init-46-coding-rust.el")

;; === misc ===
;; (load-file "~/.emacs.d/config/init-70-misc-ledger.el")
(load-file "~/.emacs.d/config/init-80-notes.el")
(load-file "~/.emacs.d/config/init-81-journal.el")

;; === find-file ===
(find-file "~/Dropbox/Orgzly/projects.org")

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-c/c++-clang-executable "clang-3.5")
 '(flycheck-c/c++-googlelint-executable "~/.emacs.d/scripts/cpplint.py")
 '(flycheck-google-cpplint-filter "-whitespace,+whitespace/braces")
 '(flycheck-google-cpplint-linelength "120")
 '(flycheck-google-cpplint-verbose "3")
 '(org-agenda-files
   (quote
    ("~/Dropbox/Orgzly/ms.org" "~/Dropbox/Orgzly/refile.org" "~/Dropbox/Orgzly/bugs.org" "~/Dropbox/Orgzly/crypto.org" "~/Dropbox/Orgzly/daily-log.org" "~/Dropbox/Orgzly/diary.org" "~/Dropbox/Orgzly/home-misc.org" "~/Dropbox/Orgzly/home-projects.org" "~/Dropbox/Orgzly/meta.org" "~/Dropbox/Orgzly/projects.org" "~/Dropbox/Orgzly/notes/")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("elpy" . "http://jorgenschaefer.github.io/packages/"))))
 '(package-selected-packages
   (quote
    (helm-ispell company-irony yaml-mode ws-butler which-key web-mode use-package swiper-helm swift-mode spaceline rust-mode monokai-theme matlab-mode markdown-mode magit ledger-mode irony helm-projectile helm-navi helm-bind-key helm-ag haskell-mode google-c-style general flycheck-rust exec-path-from-shell evil-vimish-fold evil-surround evil-snipe emmet-mode elpy diminish color-theme-solarized cmake-mode auctex ag deft org-journal))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "nil" :family "Ubuntu Mono")))))
