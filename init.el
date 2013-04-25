;;;; init.el -- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs
;; initialization from Emacs lisp embedded in literate Org-mode
;; files. 
;;
;; See http://orgmode.org/worg/org-contrib/babel/intro.html

(require 'org-install)
(require 'ob-tangle)

;; Function: file-name-directory filename ; returns the diretory part of filename
;; Function: buffer-file-name &optional buffer ; return the absolute file name of the file that buffer is visiting
;; Variable: load-file-name ; hold the name of the file that Emacs is in the process of loading
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name))) ;; "~/.emacs.d/"

;; Function: directory-files directory &optional full-name match-regexp nosort ; returns a list of the names of the ifles in directory
;; Function: org-babel-load-file file ; load Emacs Lip code blocks embedded in a literate Org-mode file
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;;;; init.el ends here
