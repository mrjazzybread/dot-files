(package-initialize)

(org-babel-load-file "~/.config/econfig.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-posframe-border-width 3)
 '(org-safe-remote-resources '("\\`/db:org/econfig\\.org\\'"))
 '(package-selected-packages
   '(exwm dired-subtree dired-hist ef-themes all-the-icons-ivy-rich ivy-rich-all-the-icons ivy-rich bluetooth smex ivy-posframe counsel yaml-mode htmlize epresent hide-mode-line emacs-hide-mode-line valign
	  #("valign" 0 6
	    (escaped t))
	  #("valign" 0 6
	    (escaped t))
	  all-the-icons-dired all-the-icons mingus eat good-scroll elisp esh-autosuggest gnu-elpa-keyring-update frames-only-mode async mu4e wallabag anki go-translate mu4e-alert writeroom tuareg quelpa proof-general pdf-view-restore pacmacs org-alert magit lsp-mode flycheck fireplace dune doom-modeline))
 '(writeroom-global-effects
   '(writeroom-set-alpha writeroom-set-menu-bar-lines writeroom-set-tool-bar-lines writeroom-set-vertical-scroll-bars writeroom-set-bottom-divider-width)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-selection ((t (:extend t :background "dark violet" :distant-foreground "hot pink")))))
