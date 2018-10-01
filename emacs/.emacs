;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: kboddez <marvin@42.fr>                     +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/10/05 07:37:24 by kboddez           #+#    #+#              ;
;    Updated: 2016/10/05 07:44:53 by kboddez          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

; Load general features files
;(setq config_files "/usr/share/emacs/site-lisp/")
;(setq load-path (append (list nil config_files) load-path))

;(load "list.el")
;(load "string.el")
;(load "comments.el")
;(load "header.el")
;; Set default font

;(autoload 'php-mode "php-mode" "Major mode for editing PHP code" t)
;(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

; Set default emacs configuration
(set-language-environment "UTF-8")
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
;(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
;	  		  				 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))


;*******************************************************************************;
(put 'downcase-region 'disabled nil)
