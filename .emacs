(require 'package)

(setq default-frame-alist '((font . "DejaVu Sans Mono 14")))


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
  :mode (("\\.ocamlinit\\'" . tuareg-mode)))

;; Major mode for editing Dune project files
(use-package dune
  :ensure t)

;; Merlin provides advanced IDE features
(use-package merlin
 :ensure t
 :config
  (add-hook 'tuareg-mode-hook #'merlin-mode)
  (add-hook 'merlin-mode-hook #'company-mode)
;;  we're using flycheck instead
  (setq merlin-error-after-save nil))

(use-package merlin-eldoc
  :ensure t
  :hook ((tuareg-mode) . merlin-eldoc-setup))

;; This uses Merlin internally
(use-package flycheck-ocaml
  :ensure t
  :config
  (flycheck-ocaml-setup))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes '(shades-of-purple))
 '(custom-safe-themes
   '("50e1e7c99029947a0681e99ad0e6d9fe5d8a7d5c6c2468784523b211359c8a86" "9398969cf7214748a41a02e35c660b5325cfa0832ea2a04bd1eb2b600665dd74" "6752a763be62c7da5c70d04cd5f559c2f96479caa18809c54612cb918ba08708" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "a5270d86fac30303c5910be7403467662d7601b821af2ff0c4eb181153ebfc0a" "871b064b53235facde040f6bdfa28d03d9f4b966d8ce28fb1725313731a2bcc8" "98ef36d4487bf5e816f89b1b1240d45755ec382c7029302f36ca6626faf44bbd" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" "ba323a013c25b355eb9a0550541573d535831c557674c8d59b9ac6aa720c21d3" "3039a2b04f05e9e730f23b56a44b9f6c5b40a4eb0bbc0a4b79ddfe7195ee98fd" default))
 '(eglot-confirm-server-edits nil nil nil "Customized with use-package eglot")
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(org-adapt-indentation t)
 '(org-agenda-files '("~/agenda.org"))
 '(org-hide-leading-stars t)
 '(org-startup-indented t)
 '(package-selected-packages
   '(lsp-mode helm proof-general auctex-latexmk gnu-elpa-keyring-update auctex list-packages-ext lavenderless-theme lavender-theme shades-of-purple-theme company-jedi virtualenv magit git-modes git haskell-mode eglot gruvbox-theme auto-complete company cmake-mode use-package merlin-eldoc flycheck-ocaml dune))
 '(pdf-view-midnight-colors '("#282828" . "#f2e5bc")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

(defun ask-before-closing ()
  "Prompt for confirmation for emacsclient(not daemon) like confirm-kill-emacs for running Emacs without daemon."
  (interactive)
  (if (y-or-n-p (format "Really exit Emacs? "))
          (save-buffers-kill-terminal)
        (message "Canceled frame close!")))
(when (daemonp)
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

(defadvice text-scale-increase (around all-buffers (arg) activate)
  (dolist (buffer (buffer-list))
    (with-current-buffer buffer
      ad-do-it)))


(setq proof-splash-enable nil)
(setq inhibit-x-resources nil)

(global-auto-revert-mode 1)
(add-hook 'text-mode-hook #'auto-fill-mode)
(add-hook 'text-mode-hook #'flyspell-mode)

(add-hook
 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t) 
(add-hook 'python-mode-hook #'company-mode)
(setq shell-file-name "/bin/zsh")


(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

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

