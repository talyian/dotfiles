
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "talyian.el" (file-name-directory load-file-name)))
(load (expand-file-name "coral-mode.el" (file-name-directory load-file-name)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(c-offsets-alist (quote ((brace-list-intro . +) (arglist-intro . +))))
 '(custom-enabled-themes (quote (wombat-no-bold)))
 '(custom-safe-themes
   (quote
    ("66317e35f4a81b05ebe0c665309ec15b44f2f23dc8c865563415da816414b86f" "89bd0c3d7941b5a49ae21732a8734ee0d9ade35a5b6bc9835588d9f85b95890c" default)))
 '(flycheck-clang-language-standard "c++17")
 '(indent-tabs-mode nil)
 '(lsp-clients-clangd-args (quote ("--compile-commands-dir=build")))
 '(lsp-clients-clangd-executable "/usr/bin/clangd-10")
 '(lsp-enable-indentation nil)
 '(lsp-enable-on-type-formatting nil)
 '(org-agenda-files (quote ("~/git/coral/src-cpp/tasks.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (shell . t) (C . t) (sqlite . t))))
 '(org-hierarchical-todo-statistics nil)
 '(org-html-checkbox-type (quote unicode))
 '(org-html-creator-string "")
 '(org-html-head-include-default-style nil)
 '(org-html-html5-fancy t)
 '(org-html-htmlize-output-type (quote css))
 '(org-html-postamble nil)
 '(org-html-validation-link "")
 '(org-todo-keywords (quote ((sequence "TODO(t)" "DOING(i)" "|" "DONE(d!)"))))
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (yasnippet company lsp-ui csv-mode org-pomodoro rust-mode htmlize lua-mode glsl-mode haskell-mode cmake-mode fsharp-mode flycheck counsel evil evil-magit evil-org general magit projectile swiper swiper-helm flx)))
 '(python-shell-interpreter "python3")
 '(safe-local-variable-values
   (quote
    ((find-file "notes/project.org")
     (find-file notes/project\.org)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
