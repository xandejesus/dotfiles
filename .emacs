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

(add-to-list 'load-path "~/.emacs.d/evil")
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(use-package kaolin-themes
 :config
 (load-theme 'kaolin-temple t))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "a131602c676b904a5509fff82649a639061bf948a5205327e0f5d1559e04f5ed" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "f00a605fb19cb258ad7e0d99c007f226f24d767d01bf31f3828ce6688cbdeb22" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "06ed754b259cb54c30c658502f843937ff19f8b53597ac28577ec33bb084fa52" default))
 '(package-selected-packages
   '(pdf-tools kaolin-themes evil-visual-mark-mode evil use-package)))
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
(require 'evil)
(evil-mode 1)

(use-package org
  :ensure t)

(electric-indent-mode 0)
