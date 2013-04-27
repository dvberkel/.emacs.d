;;;; init.el -- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs
;; initialization from Emacs lisp embedded in literate Org-mode
;; files.
;;
;; See http://orgmode.org/worg/org-contrib/babel/intro.html

;; You can lookup definitions of variables and functions with the
;; following functions:
;; `(describe-variable)` which is bound to C-h v
;; `(describe-function)` which is bound to C-h f
;;
;; For example, when the cursor is over `(describe-function)` and you
;; perform `C-h f` you are presented with information about
;; `describe-function`.
;; This will aid you in the fine points of this init.el file.

(require 'org-install)
(require 'ob-tangle)

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name))) ;; "~/.emacs.d/"
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;;;; init.el ends here
