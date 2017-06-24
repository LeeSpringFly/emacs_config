(global-linum-mode t)

(tool-bar-mode -1)
(setq-default cursor-type 'bar)

(setq auto-save-default nil)

(setq make-backup-files nil)

;; switch-window
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

;; window-numbering
(window-numbering-mode)

(provide 'init-ui)
