;*******************************************************************************;

;Set default emacs configuration
(set-language-environment "UTF-8")
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))


;*******************************************************************************;
