(use-package expand-region
  :bind ("C-M-z" . er/expand-region))

(use-package autopair
  :config (autopair-global-mode))

(use-package projectile
  :defer t
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'ivy))

(use-package helm-config
  :init
  :bind
  ("C-x b" . helm-buffers-list)
  ("C-x r b" . helm-bookmarks)
  ("C-x m" . helm-M-x)
  ("M-y" . helm-show-kill-ring)
  ("C-x C-f" . helm-find-files)
  )

(use-package helm-projectile
  :config
  (helm-projectile-on)
  (setq projectile-enable-caching t)
  (add-to-list 'projectile-globally-ignored-directories ".tmp_svn_workspace")
  )

(use-package xcscope
  :defer t
  :config (cscope-setup))

(use-package magit
  :defer t)

(use-package ace-jump-mode
  :commands ace-jump-mode
  :bind(
  ("C-c SPC" . ace-jump-mode)
  ("C-x SPC" . ace-jump-mode-pop-mark)))

(use-package rainbow-delimiters
  :defer t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))


(use-package helm
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100)
    (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
          helm-input-idle-delay 0.01  ; this actually updates things
                                        ; reeeelatively quickly.
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t)
    (helm-mode))
  :bind (("C-c h" . helm-mini)
         ("C-h a" . helm-apropos)
         ("C-x C-b" . helm-buffers-list)
         ("C-x b" . helm-buffers-list)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
         ("C-x c o" . helm-occur)
         ("C-x c s" . helm-swoop)
         ("C-x c SPC" . helm-all-mark-rings)))
(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally

(use-package undo-tree
  :defer t
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))


(use-package helm-swoop
  :bind
 (("M-s s" . helm-swoop)
  ("M-s M-s" . helm-swoop))
 :config
 (progn
   (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
   (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop))
)

(use-package smart-mode-line
  :ensure t)
(package-initialize)
