(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(setq delete-by-moving-to-trash t)

(require 'package)
(setq default-frame-alist '((font . "DejaVu Sans Mono 22")))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;; keep the installed packages in .emacs.d

(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(package-initialize)
;; update the package metadata is the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))

(load "/home/tiago/.opam/4.14.1/share/emacs/site-lisp/tuareg.el")

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-verbose t)

;; Major mode for OCaml programming
(use-package tuareg
  :ensure t
  :mode (("\\.ocamlinit\\'" . tuareg-mode))
  )

;; Major mode for editing Dune project files
(use-package dune
  :ensure t)

(use-package quelpa :ensure t)

(add-hook 'tuareg-mode-hook #'lsp)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(bookmark-save-flag 0)
 '(buffer-face-mode-face '(:height 200 :family "Ubuntu Mono"))
 '(capf-autosuggest-dwim-next-line nil)
 '(comint-process-echoes t)
 '(confirm-kill-processes nil)
 '(custom-enabled-themes '(shades-of-purple))
 '(custom-safe-themes
   '("50e1e7c99029947a0681e99ad0e6d9fe5d8a7d5c6c2468784523b211359c8a86" "9398969cf7214748a41a02e35c660b5325cfa0832ea2a04bd1eb2b600665dd74" "6752a763be62c7da5c70d04cd5f559c2f96479caa18809c54612cb918ba08708" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "a5270d86fac30303c5910be7403467662d7601b821af2ff0c4eb181153ebfc0a" "871b064b53235facde040f6bdfa28d03d9f4b966d8ce28fb1725313731a2bcc8" "98ef36d4487bf5e816f89b1b1240d45755ec382c7029302f36ca6626faf44bbd" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" "ba323a013c25b355eb9a0550541573d535831c557674c8d59b9ac6aa720c21d3" "3039a2b04f05e9e730f23b56a44b9f6c5b40a4eb0bbc0a4b79ddfe7195ee98fd" default))
 '(dired-listing-switches "-la")
 '(doc-view-resolution 1000)
 '(eglot-confirm-server-edits nil nil nil "Customized with use-package eglot")
 '(gnus-secondary-select-methods '((nnmaildir "news.tilde.club")))
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(lsp-headerline-breadcrumb-enable nil)
 '(mu4e-context-policy 'pick-first)
 '(mu4e-headers-fields '((:human-date . 12) (:from . 22) (:subject)))
 '(multi-eshell-shell-function '(eshell))
 '(multi-term-program "/bin/zsh")
 '(org-adapt-indentation t)
 '(org-agenda-files '("~/org/appoint.org" "~/org/todo.org"))
 '(org-agenda-sorting-strategy
   '((agenda habit-down time-up priority-down category-keep)
     (todo todo-state-down)
     (tags priority-down category-keep)
     (search category-keep)))
 '(org-capture-templates
   '(("w" "Writing TODO" entry
      (file+headline "~/org/todo.org" "Writing")
      "* TODO %?\12 " :empty-lines 0)
     ("p" "Programming TODO" entry
      (file+headline "~/org/todo.org" "PhD Tasks")
      "* TODO %?\12 " :empty-lines 0)
     ("a" "Appointments" entry
      (file+headline "~/org/appoint.org" "Appointments")
      "* APPOINTMENT %?\12 " :empty-lines 0)
     ("r" "Reading List" entry
      (file+headline "~/org/todo.org" "Reading List")
      "- [ ] %?\12 " :empty-lines 0)) t)
 '(org-cite-export-processors '((t biblatex "numeric" "numeric")))
 '(org-cite-global-bibliography '("~/org/org.bib"))
 '(org-export-with-sub-superscripts nil)
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-hide-macro-markers t)
 '(org-latex-src-block-backend 'listings)
 '(org-link-descriptive t)
 '(org-pretty-entities t)
 '(org-startup-indented t)
 '(package-selected-packages
   '(pdf-view-restore pdf-tools proof-general capf-autosuggest eshell-syntax-highlighting eshell-prompt-extras org-present writeroom-mode visual-fill-column eldoc-box shr-tag-pre-highlight shrface eww-lnum image-roll vc-use-package company-coq mu4e-alert org-alert doom-modeline bbdb epresent loccur org-modern quelpa tree-sitter-langs tree-sitter lsp-mode ocamlformat pacmacs vterm eat pbcopy unicode-fonts fireplace frames-only-mode comment-tags helm auctex-latexmk gnu-elpa-keyring-update auctex list-packages-ext lavenderless-theme lavender-theme shades-of-purple-theme company-jedi virtualenv magit git-modes git haskell-mode eglot gruvbox-theme auto-complete company cmake-mode use-package dune))
 '(package-vc-selected-packages
   '((image-roll :url "https://github.com/aikrahguzar/image-roll.el")
     (vc-use-package :vc-backend Git :url "https://github.com/slotThe/vc-use-package")))
 '(pdf-view-midnight-colors '("#282828" . "#f2e5bc"))
 '(proof-multiple-frames-enable t)
 '(vterm-copy-exclude-prompt nil)
 '(vterm-use-vterm-prompt-detection-method nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-bright-green ((t (:inherit ansi-color-green)))))

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

(setq proof-splash-enable nil)
(setq inhibit-x-resources nil)

(global-auto-revert-mode 1)
(add-hook 'text-mode-hook #'auto-fill-mode)
(add-hook 'text-mode-hook #'flyspell-mode)
(add-hook 'dired-mode-hook #'dired-omit-mode)

(add-hook
 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t) 
(add-hook 'python-mode-hook #'company-mode)
(setq shell-file-name "/bin/zsh")


(cond ((> emacs-major-version 20)
       (tool-bar-mode -1) ; introduced in emacs 21
       (menu-bar-mode -1)
       (scroll-bar-mode -1)
       (menu-bar-showhide-fringe-menu-customize-disable)
       (blink-cursor-mode -1)
       (windmove-default-keybindings 'meta)))

(set-face-attribute 'default nil :height 150)
(bind-key "M-n" 'forward-paragraph)
(bind-key "M-p" 'backward-paragraph)
(require 'url)    

(defun web-test ()
  (let ((chars))
    (with-current-buffer
        (url-retrieve-synchronously "https://www.google.com")
      (setq chars (point-max))
      (kill-buffer))
    (message "Retrieved %s chars" chars)))

(defun vt ()
  (interactive)
  (select-frame (make-frame))
  (funcall #'multi-vterm)
)
(global-set-key "\C-t" 'vt) 

(setq org-capture-templates
      '(    
        ("w" "Writing TODO"
         entry (file+headline "~/org/todo.org" "Writing")
         "* TODO %?\n "
         :empty-lines 0)
	
	("p" "Programming TODO"
         entry (file+headline "~/org/todo.org" "PhD Tasks")
         "* TODO %?\n "
         :empty-lines 0)
	
	("a" "Appointments"
         entry (file+headline "~/org/appoint.org" "Appointments")
         "* APPOINTMENT %?\n "
         :empty-lines 0) 
	("r" "Reading"
	 checkitem (file+headline "~/org/todo.org" "Reading List")
	 "[ ] %?\n")
      ))

;; TODO states
(setq org-todo-keywords
      '((sequence "TODO(t)" "APPOINTMENT(p)" "IN-PROGRESS(i@/!)" "VERIFYING(v!)" "BLOCKED(b@)" "|" "DONE(d!)" "OBE(o@!)" "WONT-DO(w@/!)" )
        ))
;; TODO colors
(setq org-todo-keyword-faces
      '(
        ("TODO" . (:foreground "GoldenRod" :weight bold))
        ("APPOINTMENT" . (:foreground "DeepPink" :weight bold))
        ("IN-PROGRESS" . (:foreground "Cyan" :weight bold))
        ("VERIFYING" . (:foreground "DarkOrange" :weight bold))
        ("BLOCKED" . (:foreground "Red" :weight bold))
        ("DONE" . (:foreground "LimeGreen" :weight bold))
        ("WONT-DO" . (:foreground "LimeGreen" :weight bold))
        ))
;; This is for org-mode agenda view activation
 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
 ;; This is for key bindings to invoke agenda mode (see line-2)
 (global-set-key "\C-cl" 'org-store-link)
 (global-set-key "\C-ca" 'org-agenda)
 (global-set-key "\C-cc" 'org-capture)
 (global-set-key "\C-cb" 'org-iswitchb)

(setq overlay-arrow-string "")
(add-hook 'dired-mode-hook
	  (lambda () (local-set-key (kbd "o") #'dired-omit-mode)))
(add-hook 'dired-mode-hook
	  (lambda () (local-set-key (kbd "b") #'dired-omit-mode)))
(add-hook 'tuareg-mode-hook
	  (lambda () (setq compile-command "~/.config/ocompile.sh")))
(add-hook 'menhir-mode-hook
	  (lambda () (setq compile-command "~/.config/ocompile.sh")))


(setq dired-omit-files
    (rx (or (seq bol (? ".") "#")     ;; emacs autosave files
        (seq bol "." (not (any "."))) ;; dot-files
        (seq "~" eol)                 ;; backup-files
        (seq bol "CVS" eol)           ;; CVS dirs
        )))
(savehist-mode)

(add-hook 'tuareg-mode-hook
          (lambda()
            (local-unset-key (kbd "C-c C-l"))))
(add-hook 'coq-mode-hook
          (lambda()
            (local-unset-key (kbd "M-p"))))
(add-hook 'coq-mode-hook
          (lambda()
            (local-unset-key (kbd "M-n"))))

(add-hook 'coq-mode-hook
          (lambda()
            (prettify-symbols-mode)))


(require 'flycheck)
(require 'lsp)

(defun tag-word-or-region (text-begin text-end)
  "Surround current word or region with given text."
  (interactive "sStart tag: \nsEnd tag: ")
  (let (pos1 pos2 bds)
    (if (and transient-mark-mode mark-active)
        (progn
          (goto-char (region-end))
          (insert text-end)
          (goto-char (region-beginning))
          (insert text-begin))
      (progn
        (setq bds (point))
        (goto-char bds)
        (insert text-end)
        (goto-char bds)
        (insert text-begin)))))
(setq env-map '( ("cfml" . "coq")
  ("ocamlenv" . "ocaml")
  ("gospel" . "ocaml")
  ("whylang" . "ocaml")
))


(defun org-insert-code-env (env-name)
  (interactive "sEnvironment name: ")
  (tag-word-or-region (concat "#+ATTR_LATEX: :environment " env-name
			      "\n#+begin_example " (alist-get env-name env-map nil nil #'equal) "\n")
		      "\n#+end_example"
  ))

(defun org-insert-macro ()
  (interactive)
  (tag-word-or-region "{{{" "}}}")
 )

(require 'org)
(progn
  (define-key flycheck-mode-map (kbd "\C-c \C-x") (lambda () (interactive) (flycheck-next-error)))
  (define-key lsp-mode-map      (kbd "C-c C-l") (lambda () (interactive) (lsp-find-definition)))
  (define-key org-mode-map      (kbd "C-c C-x C-x")
	      (lambda (env-name)
		(interactive "sEnvironment name: ") (org-insert-code-env env-name)))
  (define-key org-mode-map      (kbd "C-c C-x C-m") (lambda () (interactive) (org-insert-macro)))
  (define-key org-mode-map      (kbd "C-C C-x $") #'flyspell-check-previous-highlighted-word)
  )

;(set-face-attribute 'org-meta-line nil :foreground (face-attribute 'default :background))

(add-hook 'org-mode-hook
  (lambda ()
    (push '("#+end_example" . ?​) prettify-symbols-alist)
    (push '("#+begin_example coq" . ?🐓) prettify-symbols-alist)
    (push '("#+begin_example ocaml" . ?🐫) prettify-symbols-alist)
    (push '("#+ATTR_LATEX: :environment cfml" . ?​) prettify-symbols-alist)
    (push '("#+ATTR_LATEX: :environment ocamlenv" . ?​) prettify-symbols-alist)
    (push '("#+ATTR_LATEX: :environment gospel" . ?​) prettify-symbols-alist)
    (push '("#+ATTR_LATEX: :environment whylang" . ?​) prettify-symbols-alist)
    (push '("->" . ?→) prettify-symbols-alist)
    (push '("|-" . ?⊢) prettify-symbols-alist)
    (push '("/\\" . ?∧) prettify-symbols-alist)
    (push '("\\/" . ?∨) prettify-symbols-alist)
    (push '("<-" . ?←) prettify-symbols-alist)
    (prettify-symbols-mode 1)))
(add-hook 'text-mode-hook #'writeroom-mode)

(column-number-mode)
(doom-modeline-mode)

(use-package org-alert
  :ensure t)

(setq alert-default-style 'libnotify)
(org-alert-enable)

(setq org-alert-interval 300
      org-alert-notify-cutoff 10
      org-alert-notify-after-event-cutoff 10)

;; (load "~/.pdf-tools/lisp/pdf-macs.el")
;; (load "~/.pdf-tools/lisp/pdf-util.el")
;; (load "~/.pdf-tools/lisp/pdf-info.el")
;; (load "~/.pdf-tools/lisp/pdf-cache.el")
;; (load "~/.pdf-tools/lisp/pdf-view.el")
;; (load "~/.pdf-tools/lisp/pdf-misc.el")
;; (load "~/.pdf-tools/lisp/pdf-dev.el")
;; (load "~/.pdf-tools/lisp/pdf-history.el")
;; (load "~/.pdf-tools/lisp/pdf-isearch.el")
;; (load "~/.pdf-tools/lisp/pdf-links.el")
;; (load "~/.pdf-tools/lisp/pdf-tools.el")
;; (load "~/.pdf-tools/lisp/pdf-loader.el")
;; (load "~/.pdf-tools/lisp/pdf-occur.el")
;; (load "~/.pdf-tools/lisp/pdf-outline.el")
;; (load "~/.pdf-tools/lisp/pdf-roll.el")
;; (load "~/.pdf-tools/lisp/pdf-sync.el") 
;; (load "~/.pdf-tools/lisp/pdf-virtual.el")
;; (load "~/.pdf-tools/lisp/pdf-annot.el")
(pdf-tools-install)

(add-hook 'pdf-view-mode-hook
          (lambda()
            (pdf-view-restore-mode)))

(load "~/.shr.el")

(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column))

(setq visual-fill-column-width 110
      visual-fill-column-center-text t)

(defun my/org-present-start ()
  ;; Center the presentation and wrap lines
  (visual-line-mode 1)
  (visual-fill-column-mode 1)
  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
                                   (header-line (:height 4.0) variable-pitch)
                                   (org-document-title (:height 1.75) org-document-title)
                                   (org-code (:height 1.55) org-code)
                                   (org-verbatim (:height 1.55) org-verbatim)
                                   (org-block (:height 1.25) org-block)
                                   (org-block-begin-line (:height 0.7) org-block)))
  )

(defun my/org-present-end ()
  ;; Stop centering the document
  (visual-line-mode 0)
  (visual-fill-column-mode 0)
  (setq-local face-remapping-alist '((default default default)))
  )

(defun my/org-present-prepare-slide (buffer-name heading)
  ;; Show only top-level headlines
  (org-overview)

  ;; Unfold the current entry
  (org-show-entry)
  (variable-pitch-mode 0)
  ;; Show only direct subheadings of the slide but don't expand them
  (org-show-children))

;; Register hooks with org-present
(add-hook 'org-present-mode-hook 'my/org-present-start)
(add-hook 'org-present-mode-quit-hook 'my/org-present-end)

(add-hook 'org-present-after-navigate-functions 'my/org-present-prepare-slide)

(add-hook 'shell-mode-hook #'company-mode)
(add-hook 'shell-mode-hook #'capf-autosuggest-mode)
(add-hook 'shell-mode-hook #'buffer-face-mode)

(defun my-clear ()
  (interactive)
  (erase-buffer)
  (comint-send-input))

(defun my-shell-hook ()
  (local-set-key "\C-l" 'my-clear)
)
(add-hook 'shell-mode-hook 'my-shell-hook)

(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC" . "#\\+END_SRC"))
(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_EXAMPLE" . "#\\+END_EXAMPLE"))
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_src" . "#\\+end_src"))
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_example" . "#\\+end_example"))
(add-to-list 'ispell-skip-region-alist '("^#\\+" . "\n"))
(add-to-list 'ispell-skip-region-alist '("~" . "~"))
(add-to-list 'ispell-skip-region-alist '("{{{" . "}}}"))
(add-to-list 'ispell-skip-region-alist '("<<" . ">>"))

(defun frames-only-tuareg ()
  (if tuareg-mode
      (frames-only-mode 1)
    (frames-only-mode 0)))

(add-hook 'tuareg-mode-hook #'frames-only-tuareg)
