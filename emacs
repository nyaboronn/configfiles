b(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-hook 'text-mode-hook t)
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" default))
 '(global-font-lock-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(gruvbox-theme))
 '(setq dafault-major-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-display-line-numbers-mode)


(add-hook 'c-mode-hook
	  '(lambda ( )
	     (c-set-style "k&r")
	     (c-toggle-auto-state)))

(add-hook 'c++-mode-hook
	  '(lambda ( )
	     (c-set-style "Stroustrup")
	     (c-toggle-auto-state)))


(add-hook 'comint-output-filter-functions
	  'comint-watch-for-password-prompt)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
