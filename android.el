;; -*- lexical-binding: t; -*-
(setq touch-screen-display-keyboard t)
(savehist-mode)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(require 'use-package)
(setq use-package-verbose t)

(setq use-package-always-ensure t)

(use-package gnu-elpa-keyring-update)

(setq custom-safe-themes t)
(use-package doom-themes)
(load-theme 'doom-shades-of-purple)

(use-package pinentry)
(setenv "GPG_AGENT_INFO" nil)  ;; use emacs pinentry
(setq auth-source-debug t)

(setq epg-gpg-program "gpg2")  ;; not necessary
(require 'epa-file)
(epa-file-enable)


(setq epa-pinentry-mode 'loopback)
(setq epg-pinentry-mode 'loopback)
(pinentry-start)

(require 'org-crypt)
(org-crypt-use-before-save-magic)

(setq epa-file-encrypt-to "tl.soares@campus.fct.unl.pt")
(setq epa-file-select-keys 1)

(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)

(setq inhibit-splash-screen t)

(defvar agenda "~/journal/personal/appoint.org.gpg")

(setq org-agenda-file-regexp "\\`[^.].*\\.org\\\(\\.gpg\\\)?\\'")
(setq org-agenda-files (list "~/journal/personal"))

(set-background-color "#34293E")

(setq org-capture-templates
      '(
        ("a" "Appointment"
         entry (file+headline agenda "Appointments")
         "* APPOINTMENT %?\n "
         :empty-lines 0)
      ))

(setq org-todo-keywords
      '((sequence "APPOINTMENT(p)" "TODO(t)" "IN-PROGRESS(i@/!)" "VERIFYING(v!)" "BLOCKED(b@)" "👁️👄👁️(q)" "|" "DONE(d!)" "OBE(o@!)" "WONT-DO(w@/!)" )
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

(use-package magit)

(bind-key "C-x g" #'magit-status)

(setq org-agenda-skip-timestamp-if-done t
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-skip-scheduled-if-deadline-is-shown t
      org-agenda-skip-timestamp-if-deadline-is-shown t)

(org-agenda-list)
(delete-other-windows)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
