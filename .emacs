(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'color-theme-solarized)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (if window-system
        (color-theme-solarized-dark)
	(color-theme-black))))

(global-linum-mode)
(setq make-backup-files nil)