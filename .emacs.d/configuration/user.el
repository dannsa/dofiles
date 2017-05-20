
;Set author-name
(setq user-full-name
      "DannSa")

;Disable backup
(setq backup-inhibited
      t)

;Disable auto save
(setq auto-save-default
      nil)

;Disable splash message
(setq inhibit-splash-screen
      t)
;Enforce spaces for indentation, instead of tabs
(setq-default indent-tabs-mode
	      nil)

(setq tab-width 2
      indent-tabs-mode nil)
(setq-default c-basic-offset 4)

;Set password cache infinite
(setq password-cache-expiry nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))
(setq savehist-file "~/.emacs.d/savehist")

(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
