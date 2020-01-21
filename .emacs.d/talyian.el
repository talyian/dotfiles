;; General Editor setup
(evil-mode)
(evil-magit-init)
(tool-bar-mode -1)
(setq-default tab-width 4)
(setq-default c-offset-width 2)
(setq backup-directory-alist
    `((".*" . ,temporary-file-directory))
  auto-save-file-name-transforms
    `((".*" ,temporary-file-directory t)))
;; completions
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper-helm) ; swiper ivy has a bug currently, so use swiper helm
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
  "ps" 'projectile-grep
  "cc" 'recompile
  "po" 'projectile-find-other-file
  )
(general-evil-define-key 'normal 'global
  :prefix "g"
  "o" 'evil-jump-backward
  "i" 'evil-jump-forward)

(global-set-key (kbd "<f5>") 'recompile)

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

;; coral mode
(autoload 'coral-mode
  (expand-file-name "coral-mode.el" (file-name-directory load-file-name))
  "coral programming mode" t nil)
