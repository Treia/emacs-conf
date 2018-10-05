;; Bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (boostrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use package for handling packages
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Bunch of sensibles (or not so much) defaults
(setq auto-save-default nil
      custom-safe-themes t
      make-backup-files nil
      vc-follow-symlinks t)

;; Modes
(global-display-line-numbers-mode)

;; Core packages
(use-package general)
(use-package magit)
(use-package ivy
  :config
  (ivy-mode 1))
(use-package counsel)
(use-package swiper)
(use-package helpful
  :config
  (general-define-key
   "C-h C" 'helpful-command
   "C-h F" 'helpful-function
   "C-h f" 'helpful-callable
   "C-h v" 'helpful-variable
   "C-h k" 'helpful-key))
(use-package which-key
  :config
  (which-key-mode)
  (setq which-key-sort-order 'which-key-prefix-then-key-order))

;; Core keybindings
(general-define-key
 "M-x" 'counsel-M-x
 "C-x C-f" 'counsel-find-file
 "C-s" 'swiper)

;; Load local config
(load "~/.emacs.d/visual.el")
(load "~/.emacs.d/evil.el")
(load "~/.emacs.d/keybindings.el")
(load "~/.emacs.d/navigation.el")
