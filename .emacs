(setq vc-follow-symlinks nil)
(org-babel-load-file "~/.config/econfig.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(auto-revert-interval 1)
 '(auto-revert-use-notify nil)
 '(ispell-alternate-dictionary "/usr/lib/aspell-0.60/")
 '(package-selected-packages
   '(all-the-icons-completion all-the-icons-dired async auctex avy
			      bluetooth capf-autosuggest consult
			      desktop-environment dired-hist
			      dired-subtree doom-modeline-now-playing
			      doom-themes dune dwim-shell-command eat
			      elcord eldoc-box exec-path-from-shell
			      exwm-firefox-core exwm-mff
			      fish-completion git-auto-commit-mode
			      gnu-elpa-keyring-update magit marginalia
			      math-symbol-lists mingus mu4e-alert
			      multiple-cursors ocamlformat orderless
			      org-alert org-fragtog org-roam
			      org-roam-ui pinentry proof-general
			      rustic shades-of-purple-theme smex
			      trashed tuareg vertico vertico-posframe
			      volume writeroom-mode xdg-launche
			      xdg-launcher yaml-mode))
 '(package-vc-selected-packages
   '((xdg-launcher :url "https://github.com/emacs-exwm/xdg-launcher")))
 '(safe-local-variable-values '((eval org-columns))))
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
