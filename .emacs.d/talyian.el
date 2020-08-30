;; General Editor setup
(xterm-mouse-mode)
(evil-mode)
(evil-magit-init)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq-default tab-width 4)
(setq-default c-offset-width 2)
(setq backup-directory-alist
    `((".*" . ,temporary-file-directory))
  auto-save-file-name-transforms
    `((".*" ,temporary-file-directory t)))
(defalias 'yes-or-no-p 'y-or-n-p)
;; completions
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(setq ivy-re-builders-alist
   '((swiper . ivy--regex-plus)
	 (t      . ivy--regex-fuzzy)))

;; TODO: how do I set up general with lsp-command-map?
;; evil-mode leader key setup
(general-evil-setup t)
(general-evil-define-key 'normal 'global
  :prefix "SPC"
  "bb" 'ibuffer
  "cc" 'recompile
  "ff" 'counsel-find-file
  "fs" 'save-buffer
  "fw" 'write-file
  "oa" 'org-agenda
  "pc" 'recompile
  "pf" 'projectile-find-file
  "pg" 'projectile-grep
  "po" 'projectile-find-other-file
  "ps" 'projectile-grep
  )
(general-evil-define-key 'normal 'global
  :prefix "g"
  "o" 'evil-jump-backward
  "i" 'evil-jump-forward)
(global-set-key (kbd "<f5>") 'recompile)

;; clang settings
(defvar talyian/clangd-exe (executable-find "clangd-10"))
(defvar talyian/clang-exe (executable-find "clang-10"))
(defvar talyian/clang++-exe (executable-find "clang++-10"))
(defun talyian/cpp-mode-init ()
  (company-mode)
  (lsp-deferred)
  (yas-minor-mode)
  (general-evil-define-key 'normal 'global :prefix "SPC" (kbd "l") lsp-command-map)
  (setq company-backends '(company-capf company-lsp company-keywords company-dabbrev))
  (setq lsp-clients-clangd-executable talyian/clangd-exe)
  (setq company-minimum-prefix-length 0)
)
(add-hook 'c++-mode-hook 'talyian/cpp-mode-init)

;; coral mode
(autoload 'coral-mode
  (expand-file-name "coral-mode.el"
					(condition-case nil
						(file-name-directory load-file-name)
					  (error ".")))
  "coral programming mode" t nil)
