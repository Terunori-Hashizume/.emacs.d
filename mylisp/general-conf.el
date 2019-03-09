;; off
(setq inhibit-startup-message 1)
(setq make-backup-files nil)
(setq delete-auto-save-files 1)
(setq ring-bell-function 'ignore)
(setq mouse-wheel-progressive-speed nil)

;; on
(require 'dash)
(setq visible-bell 1)
(auto-fill-mode 1)
(electric-pair-mode 1)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)


;; os
(unless (eq system-type 'windows-nt)
  (setenv "SHELL" "/bin/zsh -i")
  (exec-path-from-shell-initialize))

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta))


;; answer y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; tab => 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; set text mode as default mode
(setq default-major-mode 'text-mode)

;; languages
(setq-default ruby-indent-level 2)
(setq-default python-indent-offset 4)
(setq-default c-basic-offset 4)
(add-hook 'c++-mode-hook 'hs-minor-mode)

;; japanese utf-8
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; org
(setq org-hide-leading-stars t)
(setq org-fontify-emphasized-text nil)
