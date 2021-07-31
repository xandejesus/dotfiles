(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(set-fringe-mode 20)

(setq ring-bell-function 'ignore)

;(load-theme 'tango-dark)

;; Package Sources

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package kaolin-themes
 :config
 (load-theme 'kaolin-temple t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("06ed754b259cb54c30c658502f843937ff19f8b53597ac28577ec33bb084fa52" default))
 '(package-selected-packages '(kaolin-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-face-background 'default "mac:windowBackgroundColor")
(set-face-stipple 'default "alpha:30%")
(defface my/default-blurred
   '((t :inherit 'default :stipple "alpha:30%"))
   "Like 'default but blurred."
   :group 'my)

 (defun my/change-bg-with-blurred ()
   (setq-local face-remapping-alist (if (assoc 'default face-remapping-alist)
                                        face-remapping-alist
                                      (append face-remapping-alist '((default my/default-blurred))))))

(setq face-remapping-alist (append face-remapping-alist '((default my/default-blurred))))
; (add-hook (treemacs-mode
;              vterm-mode
;              comint-mode
;              compilation-mode
;              lsp-ui-imenu-mode) :append #'my/change-bg-with-blurred)

;(set-face-attribute 'fringe nil :inherit 'default :background nil)
(set-face-background 'fringe "mac:windowBackgroundColor")
(set-face-stipple 'fringe "alpha:30%")
