;; Disable all the UI stuff
;; (blink-cursor-mode 0) ;; to blink or not to blink
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)

;; Show matching parenthesis
(show-paren-mode 1)

(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-medium))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
