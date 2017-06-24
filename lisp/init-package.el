(require 'package) ;; You might already have this line
(add-to-list 'package-archives
;;             '("gnu"   . "http://elpa.emacs-china.org/gnu/")
             '("melpa" . "http://elpa.emacs-china.org/melpa/"))
(package-initialize) ;; You might already have this line

(provide 'init-package)
