;; company -- 代码补全
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; vdiff
(require 'vdiff)
(define-key vdiff-mode-map (kbd "C-c") vdiff-mode-prefix-map)

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
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; move-text
(move-text-default-bindings)

;; hungry delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; plantuml
(setq org-plantuml-jar-path (expand-file-name "~/.emacs.d/lisp/plantuml.jar"))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))

;; active Org-babel languages
 (org-babel-do-load-languages
  'org-babel-load-languages
  '(;; other Babel languages
    (plantuml . t)))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

  
;;markdown
(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; flycheck
(package-install 'flycheck)
(global-flycheck-mode)

(provide 'init-simple)
