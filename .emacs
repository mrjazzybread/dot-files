(package-initialize)

(org-babel-load-file "~/.config/econfig.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-safe-remote-resources
   '("\\`https://fniessen\\.github\\.io/org-html-themes/org/theme-readtheorg\\.setup\\'" "\\`/db:org/econfig\\.org\\'"))
 '(package-selected-packages
   '(eglot opam-switch-mode merlin rustic trashed multiple-cursors exwm dired-subtree dired-hist ef-themes all-the-icons-ivy-rich ivy-rich-all-the-icons ivy-rich bluetooth smex ivy-posframe counsel yaml-mode htmlize epresent hide-mode-line emacs-hide-mode-line all-the-icons-dired all-the-icons mingus eat good-scroll elisp esh-autosuggest gnu-elpa-keyring-update frames-only-mode async mu4e wallabag anki go-translate mu4e-alert writeroom tuareg quelpa proof-general pdf-view-restore pacmacs org-alert magit flycheck fireplace dune))
 '(writeroom-global-effects
   '(writeroom-set-alpha writeroom-set-menu-bar-lines writeroom-set-tool-bar-lines writeroom-set-vertical-scroll-bars writeroom-set-bottom-divider-width)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-selection ((t (:extend t :background "dark violet" :distant-foreground "hot pink")))))
