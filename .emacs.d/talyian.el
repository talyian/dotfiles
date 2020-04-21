;; General Editor setup 
(evil-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq-default tab-width 4)
(setq-default c-offset-width 2)
(require 'evil-magit)

;; completions
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(setq ivy-re-builders-alist
   '((swiper . ivy--regex-plus)
	 (t      . ivy--regex-fuzzy)))

;; evil-mode leader key setup
(general-evil-setup t)
(general-evil-define-key 'normal 'global
  :prefix "SPC"
  "fs" 'save-buffer
  "fw" 'write-file
  "ff" 'counsel-find-file
  "pf" 'projectile-find-file
  "po" 'projectile-find-other-file
  "pc" 'recompile
  )
(general-evil-define-key 'normal 'global
  :prefix "g"
  "o" 'evil-jump-backward
  "i" 'evil-jump-forward)

;; clang settings
(defvar talyian/clangd-exe (executable-find "clangd-8"))
(defvar talyian/clang-exe (executable-find "clang-8"))
(defvar talyian/clang++-exe (executable-find "clang++-8"))
(defun talyian/cpp-mode-init ()
  (company-mode)
  (lsp-deferred)
  (setq company-backends '(company-capf company-lsp company-keywords company-dabbrev))
  (setq lsp-clients-clangd-executable talyian/clangd-exe)
  (setq company-minimum-prefix-length 0)
)
(add-hook 'c++-mode-hook 'talyian/cpp-mode-init)
