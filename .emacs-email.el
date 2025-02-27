(setq message-send-mail-function 'smtpmail-send-it)
(setq default-frame-alist (assq-delete-all 'font default-frame-alist))
(push '(font . "Roboto Mono 22") default-frame-alist)

(require 'mu4e)

(use-package mu4e
  :ensure nil
  ;; :load-path "/usr/share/emacs/site-lisp/mu4e/"
  ;; :defer 20 ; Wait until 20 seconds after startup
  :bind (:map mu4e-headers-mode-map
	      ("q" . mu4e-dashboard))
  :bind (:map mu4e-view-mode-map
	      ("<return>" . pixel-scroll-up))
  :bind (:map mu4e-view-mode-map
	      ("<backspace>" . pixel-scroll-down))
  :config

  ;; This is set to 't' to avoid mail syncing issues when using mbsync
  (setq mu4e-change-filenames-when-moving t)
  (setq mu4e-context-policy "pick-first")
  ;; Refresh mail using isync every 10 minutes
  (setq mu4e-update-interval 60)
  (setq mu4e-get-mail-command "mbsync -a")
  (setq mu4e-maildir "~/mail")

(setq mu4e-contexts
        (list
         ;; Work account
         (make-mu4e-context
          :name "FCT"
          :match-func
            (lambda (msg)
              (when msg
                (string-prefix-p "/gmail" (mu4e-message-field msg :maildir))))
          :vars '((user-mail-address . "tl.soares@campus.fct.unl.pt")
                  (user-full-name    . "Tiago Soares")
		  (smtpmail-smtp-server . "smtp.gmail.com")
		  (smtpmail-smtp-service . 465)
		  (smtpmail-stream-type . ssl)
                  (mu4e-drafts-folder  . "/gmail/[Gmail]/Drafts")
                  (mu4e-sent-folder  . "/gmail/[Gmail]/Sent Mail")
                  (mu4e-refile-folder  . "/gmail/[Gmail]/All Mail")
                  (mu4e-trash-folder  . "/gmail/[Gmail]/Trash")))
	 (make-mu4e-context
          :name "Inria"
          :match-func
            (lambda (msg)
              (when msg
                (string-prefix-p "/inria" (mu4e-message-field msg :maildir))))
            :vars '((user-mail-address . "tiago.lopes-soares@inria.fr")
                    (user-full-name    . "Tiago Soares")
		    (smtpmail-smtp-server . "smtp.inria.fr")
		    (smtpmail-smtp-service . 587)
		    (smtpmail-stream-type . nil)
                    (mu4e-drafts-folder  . "/inria/Drafts")
                    (mu4e-sent-folder  . "/inria/Sent")
                    (mu4e-trash-folder  . "/inria/Trash")))

	 )
	)


  (setq mu4e-maildir-shortcuts
      '(("/gmail/inbox"             . ?f)
        ("/inria/inbox"             . ?i)
        ("/gmail/[Gmail]/Trash"     . ?t)
        ("/gmail/[Gmail]/Drafts"    . ?d)
        ("/gmail/[Gmail]/All Mail"  . ?a)))
  )

(use-package mu4e-alert)
(mu4e-alert-enable-notifications)

(use-package ef-themes
  :config (ef-themes-select 'ef-summer))
(use-package go-translate)
(setq gt-langs '(fr en))
(setq gt-default-translator (gt-translator :engines (gt-google-engine)))

;; This configuration means:
;; Initialize the default translator, let it translate between en and fr via Google Translate,
;; and the result will be displayed in the Echo Area.

(setq gt-default-translator
      (gt-translator
       :taker   (gt-taker :text 'buffer :pick 'paragraph)  ; config the Taker
       :engines (list (gt-bing-engine) (gt-google-engine)) ; specify the Engines
       :render  (gt-buffer-render)))                       ; config the Render

(setq mu4e-headers-fields '((:human-date . 12) (:from . 22) (:subject)))

;; This configuration means:
;; Initialize the default translator, let it send all paragraphs in the buffer to Bing and Google,
;; and output the results with a new Buffer.

;; This configuration means:
;; Initialize the default translator, let it translate between en and fr via Google Translate,
;; and the result will be displayed in the Echo Area.

(add-hook 'mu4e-view-mode-hook #'writeroom-mode)
(add-hook 'mu4e-headers-mode-hook #'writeroom-mode)
(add-hook 'message-mode-hook #'auto-fill-mode)
(use-package async)
(load "~/.mu4e-dashboard/mu4e-dashboard.el")

(mu4e)

(define-globalized-minor-mode global-hide-mode hide-mode-line-mode
  (lambda () (hide-mode-line-mode 1)))

(global-hide-mode 1)

(setq inhibit-message t)

(setq message-cite-reply-position 'above)
