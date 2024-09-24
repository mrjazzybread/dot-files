(setq message-send-mail-function 'smtpmail-send-it)

(use-package mu4e
  :ensure nil
  ;; :load-path "/usr/share/emacs/site-lisp/mu4e/"
  ;; :defer 20 ; Wait until 20 seconds after startup
  :config

  ;; This is set to 't' to avoid mail syncing issues when using mbsync
  (setq mu4e-change-filenames-when-moving t)

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

(mu4e-alert-enable-notifications)

(load-theme 'gruvbox-light-hard t)

(require 'go-translate)
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

;; This configuration means:
;; Initialize the default translator, let it send all paragraphs in the buffer to Bing and Google,
;; and output the results with a new Buffer.

;; This configuration means:
;; Initialize the default translator, let it translate between en and fr via Google Translate,
;; and the result will be displayed in the Echo Area.
