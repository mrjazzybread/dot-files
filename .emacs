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
			      bluetooth consult desktop-environment
			      dired-hist dired-subtree
			      doom-modeline-now-playing doom-themes
			      dune dwim-shell-command eat elcord
			      eldoc-box esh-autosuggest
			      exec-path-from-shell exwm-firefox-core
			      exwm-mff fish-completion
			      gnu-elpa-keyring-update magit marginalia
			      math-symbol-lists mingus mu4e-alert
			      multiple-cursors ocamlformat orderless
			      org-alert org-fragtog org-roam
			      org-roam-ui pinentry proof-general
			      rustic shades-of-purple-theme smex
			      trashed tuareg vertico vertico-posframe
			      writeroom-mode yaml-mode)))
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
