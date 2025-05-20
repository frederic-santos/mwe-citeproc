(package-initialize)

;; Utilisation de use-package :
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; Org-mode :
(use-package org
  :ensure t
  :config
  (require 'ox-latex)
  (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f")))

;; Org-cite :
(use-package oc
  :defer 2
  :config
  (require 'oc-csl))

;; Ajout de citeproc.el pour les exports CSL :
(use-package citeproc
  :ensure t
  :after org)
