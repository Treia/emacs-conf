;; Disable all the UI stuff
;; (blink-cursor-mode 0) ;; to blink or not to blink
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)


(use-package kaolin-themes
  :config
  (load-theme 'kaolin-galaxy))

;; (use-package smyx-theme
;;   :config
;;   (load-theme 'smyx))
