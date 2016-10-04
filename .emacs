;;; .emacs --- Summary
;; .emacs configuration file
;;; Commentary:
;;; Code:

;; Load path
(add-to-list 'load-path "~/.emacs.d/emacs_config/")

;;==================================================================================================
;; Standard emacs things, i.e. don't require donwloading / connecting to melpa
(require 'emacs_appearance) ; my emacs appearance settings
(require 'emacs_behaviour) ; my emacs behaviour settings (controls default / general emacs behaviours)

;;==================================================================================================
;; Additional packages (requiring melpa etc.
(require 'emacs_melpa_load)

;;==================================================================================================
;; Language-specific settings
(require 'my_python)
(require 'my_C)
(require 'my_LaTeX)
(require 'my_org)
(require 'my_elisp)

;;==================================================================================================
;; Stuff created automatically by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(font-use-system-font t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 90 :width normal))))
 '(powerline-evil-base-face ((t (:inherit mode-line :foreground "dim gray"))))
 '(powerline-evil-emacs-face ((t (:inherit powerline-evil-base-face :background "violet" :weight bold))))
 '(powerline-evil-insert-face ((t (:inherit powerline-evil-base-face :background "blue" :weight bold))))
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "green" :weight bold))))
 '(py-builtins-face ((t (:inherit font-lock-builtin-face :weight bold)))))

;;==================================================================================================
;; Miscellaneous

;;--------------------------------------------------------------------------------------------------
;; My keyboard bindings
(require 'my_kbd)

;;==================================================================================================
;; evil (vim mode)
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !! This has to be loaded last!               !!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
(require 'my_evil)

(provide '.emacs)
;;; .emacs ends here
