(defvar treia-leader-key "SPC"
  "My leader key prefix")

(general-define-key
 :keymaps '(normal emacs)
 "C-h" 'evil-window-left
 "C-j" 'evil-window-down
 "C-k" 'evil-window-up
 "C-l" 'evil-window-right)
