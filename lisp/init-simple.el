;; yasnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; smartparens
(require 'smartparens-config)
(smartparens-global-mode 1)

;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
		; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; auto-complete
 (ac-config-default)

;; helm
;; (require 'helm-config)

;; move-text
(move-text-default-bindings)

;; hungry delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; plantuml
;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

(setq org-plantuml-jar-path (expand-file-name "~/.emacs.d/lisp/plantuml.jar"))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

;; flycheck plantuml
(require 'flycheck-plantuml)
(flycheck-plantuml-setup)


(provide 'init-simple)
