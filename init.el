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

;; Move custom away from here
(setq-default custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Modes
(global-display-line-numbers-mode)

;; Core packages
(use-package general)
(use-package magit)
(use-package evil-magit)
(use-package ivy
  :config
  (ivy-mode 1))
(use-package counsel)
(use-package swiper)
(use-package helpful)

(use-package which-key
  :config
  (which-key-mode)
  (setq which-key-add-column-padding 1
	which-key-idle-delay 0.2
	which-key-sort-order 'which-key-prefix-then-key-order))

;; Core keybindings
(general-define-key
 "M-x" 'counsel-M-x
 "C-x C-f" 'counsel-find-file
 "C-s" 'swiper)

;; Load local config
(load "~/.emacs.d/evil.el")
(load "~/.emacs.d/keybindings.el")
(load "~/.emacs.d/navigation.el")
(load "~/.emacs.d/visual.el")

;; TODO : move magit stuff to a versioning.el
;; TODO : add projectile
;; TODO : add magit-todos
;; TODO : Add ripgrep
;; TODO : Add treemacs
