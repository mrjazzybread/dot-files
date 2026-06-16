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
   '(all-the-icons-completion all-the-icons-dired async auctex bluetooth
			      boogie-friends capf-autosuggest consult
			      corfu csv-mode desktop-environment
			      dired-hist dired-subtree doom-modeline
			      doom-themes dune dwim-shell-command eat
			      elcord eldoc-box exec-path-from-shell
			      exwm-firefox-core exwm-mff eyebrowse
			      fish-completion flash flyspell-correct
			      git-auto-commit-mode
			      gnu-elpa-keyring-update goto-chg logito
			      magit marginalia marshal
			      math-symbol-lists mingus mu4e-alert
			      multiple-cursors navigel
			      nerd-icons-corfu ocamlformat
			      opam-switch-mode orderless org-alert
			      org-fragtog org-roam-ui ox-gfm pcache
			      pinentry proof-general rustic
			      shades-of-purple-theme smex trashed
			      tuareg vertico-posframe volume
			      writeroom-mode xdg-launcher yaml
			      yaml-mode))
 '(package-vc-selected-packages
   '((tuareg :url "https://github.com/mrjazzybread/tuareg")
     (xdg-launcher :url "https://github.com/emacs-exwm/xdg-launcher")
     (xdg-launche :url "https://github.com/emacs-exwm/xdg-launcher")))
 '(safe-local-variable-values '((org-export-buffer . beamer) (org-export-buffer . t))))
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
