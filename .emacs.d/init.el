
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "talyian.el" (file-name-directory load-file-name)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-enable-indentation nil)
 '(lsp-enable-on-type-formatting nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (shell . t) (C . t))))
 '(package-archives
   (quote
	(("gnu" . "https://elpa.gnu.org/packages/")
	 ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
	(flycheck company-lsp counsel evil evil-magit evil-org general lsp-mode lsp-ui magit projectile swiper swiper-helm flx))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
