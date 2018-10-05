(defvar treia-leader-key "SPC"
  "My leader key prefix")

(defvar treia-non-normal-leader-key "C-SPC"
  "My leader key prefix for non normal mode")


(general-unbind '(normal visual motion operator)
  treia-leader-key
  treia-non-normal-leader-key)

;; Leader keybindings
(general-define-key
 :prefix treia-leader-key
 :non-normal-prefix treia-non-normal-leader-key
 :keymaps '(normal visual insert emacs)


 ;; b for buffers
 "b" '(:ignore t :which-key "buffers")
 "ba" '(mark-whole-buffer ::which-key "select buffer content")
 "bb" '(ivy-switch-buffer :which-key "switch buffer") ;; TODO : replace by projectile-switch-to-buffer bind bB to ivy-buffer
 "bd" '(kill-this-buffer :which-key "kill this buffer")
 "bi" '(counsel-ibuffer :which-key "ibuffer")
 "bk" '(kill-buffer :which-key "kill a buffer")
 "bn" '(evil-buffer-new :which-key "new buffer")

 ;; f for files
 "f" '(:ignore t :which-key "files")
 "ff" '(counsel-find-file :which-key "find file")
 ;; TODO : add function to open with sudo

 ;; g for git
 "g" '(:ignore t :which-key "git")
 "gf" '(magit-file-popup :which-key "git log file")
 "gg" '(magit-status :which-key "git status")
 "gl" '(magit-log-all :which-key "git log all")
 "gb" '(magit-blame :which-key "git blame")

 ;; w for windows
 "w" '(:ignore t :which-key "windows")
 "wd" '(delete-window :which-key "delete window")
 "wh" '(split-window-below :which-key "hori split")
 "wr" '(winner-redo :which-key "winner redo")
 "wv" '(split-window-right :which-key "vert split")
 "wu" '(winner-undo :which-key "winner undo"))


(general-define-key
 :keymaps '(normal emacs)
 "C-h" 'evil-window-left
 "C-j" 'evil-window-down
 "C-k" 'evil-window-up
 "C-l" 'evil-window-right)
