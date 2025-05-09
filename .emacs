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
   '(aio all-the-icons-dired all-the-icons-ivy-rich anki-mode auctex
	 autothemer avy bluetooth browse-kill-ring calibredb
	 company-coq consult corfu counsel desktop-environment
	 dired-hist dired-subtree doom-modeline-now-playing dune eat
	 ef-themes eldoc-box elfeed emojify esh-autosuggest
	 exec-path-from-shell exwm exwm-firefox-core exwm-mff
	 eyebrowse fireplace fish-completion flycheck
	 flyspell-correct-ivy gnu-elpa-keyring-update go-translate
	 goto-chg highlight-defined ivy-posframe magit mingus
	 mu4e-alert multiple-cursors nerd-icons-corfu nov ocamlformat
	 opam-switch-mode org-alert org-fragtog org-roam-ui pacmacs
	 pinentry proof-general quelpa rustic shrface smex tablist
	 trashed tuareg writeroom-mode yaml-mode zoom-window))
 '(zoom-window-mode-line-color "pink"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch-text ((t (:inherit default :height 1.1))))
 '(vertical-border (nil))
 '(window-divider-first-pixel ((t (:foreground "black"))))
 '(window-divider-last-pixel ((t (:background "black")))))
