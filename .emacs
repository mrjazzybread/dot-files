(package-initialize)

(org-babel-load-file "~/.config/econfig.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(emojify-display-style 'unicode)
 '(ispell-alternate-dictionary "/usr/lib/aspell-0.60/")
 '(package-selected-packages
   '(all-the-icons-dired all-the-icons-ivy-rich auctex avy bluetooth
			 browse-kill-ring company-coq corfu counsel
			 desktop-environment dired-hist dired-subtree
			 doom-modeline-now-playing dune eat ef-themes
			 elcord eldoc-box emojify esh-autosuggest
			 eshell-prompt-extras exec-path-from-shell
			 exwm exwm-firefox-core exwm-mff fireplace
			 fish-completion flycheck-ocaml
			 flyspell-correct-ivy gnu-elpa-keyring-update
			 go-translate gruvbox-theme hide-mode-line
			 ivy-posframe lsp-mode magit merlin-eldoc
			 mingus mood-line mu4e-alert multiple-cursors
			 nerd-icons-corfu ocamlformat org-alert
			 org-fragtog org-roam pacmacs pdf-view-restore
			 pinentry proof-general quelpa rustic shackle
			 smex trashed tuareg writeroom-mode yaml-mode
			 zoom-window))
 '(zoom-window-mode-line-color "pink"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch-text ((t (:inherit default :height 1.1))))
 '(vertical-border (nil))
 '(window-divider ((t (:foreground "black"))))
 '(window-divider-first-pixel ((t (:foreground "black" :foreground "black"))))
 '(window-divider-last-pixel ((t (:foreground "black")))))
