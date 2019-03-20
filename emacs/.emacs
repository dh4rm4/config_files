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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "color-136"))))
 '(font-lock-keyword-face ((t (:foreground "color-241"))))
 '(org-table ((t (:foreground "color-27"))))
 '(popup-face ((t (:inherit default :background "black" :foreground "color-243"))))
 '(popup-scroll-bar-background-face ((t (:background "black"))))
 '(popup-summary-face ((t (:inherit popup-face :background "black" :foreground "dimgray"))))
 '(popup-tip-face ((t (:background "brightblack" :foreground "black")))))
