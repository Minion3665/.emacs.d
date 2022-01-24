;;; Get some packages in here
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
;; Add the repos

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))
;; Refresh the repo contents to get the latest packages

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
;; If we don't have use-package, install it

(require 'use-package)
:;; load use-package
(setq use-package-always-ensure t)
;; and make sure that it always downloads packages that aren't installed

(use-package org
  :init
  (org-babel-load-file "~/.emacs.d/config.org"))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(nix-mode go-mode ob-go go wolfram use-package))
 '(safe-local-variable-values
   '((org-cite-global-bibliography "~/EPQ/Documents/bibliography.bib")
     (org-roam-db-location . "~/EPQ/Notes/org-roam.db")
     (org-roam-directory . "~/EPQ/Notes")
     (org-bibtex-prefix . "")
     (org-bibtex-export-arbitrary-fields 't)
     (org-cite-global-bibliography "~/School/EPQ/Documents/bibliography.bib")
     (org-roam-dailies-capture-templates
      ("n" "default" entry "* %?" :if-new
       (file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>
")
       :unnarrowed t)
      ("d" "diary" entry "* Diary entry%?
** What have I done since the last entry?
** What have I learned & how?
** What worked well?
** What would I do differently next time?
" :if-new
(file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>
* Diary entry
** What have I done since the last entry?
** What have I learned & how?
** What worked well?
** What would I do differently next time?")))
     (org-roam-db-location . "~/School/EPQ/Notes/org-roam.db")
     (org-roam-directory . "~/School/EPQ/Notes"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
