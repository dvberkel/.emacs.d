;;;; init.el -- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs
;; initialization from Emacs lisp embedded in literate Org-mode
;; files.
;;
;; See http://orgmode.org/worg/org-contrib/babel/intro.html

(require 'org-install)
(require 'ob-tangle)

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name))) ;; "~/.emacs.d/"
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;;;; init.el ends here
