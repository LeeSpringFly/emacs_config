(global-linum-mode t)

(tool-bar-mode -1)
(setq-default cursor-type 'bar)

(setq auto-save-default nil)

(setq make-backup-files nil)

;; turn on highlighting current line
(global-hl-line-mode)

;; window-numbering
(window-numbering-mode)

;; cnfonts
(require 'cnfonts)
;; 让 cnfonts 随着 Emacs 自动生效。
(cnfonts-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
;; (cnfonts-set-spacemacs-fallback-fonts)

(provide 'init-ui) 
