;; package
(require 'package)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

;; config
(setq load-path (append '("~/.emacs.d/mylisp") load-path))
(load "general-conf")
(load "non-default-package-conf")
(load "keybindings")
(unless (equal window-system nil)
  (load "gui-appearance"))
(when (equal window-system nil)
  (load "cui-appearance"))

;; when participating in atcoder
(load "atcoder")

;; custom set
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-irony yasnippet-snippets yasnippet solarized-theme popup monokai-theme markdown-mode exec-path-from-shell evil easy-repeat company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
