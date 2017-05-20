
;title-bar text
(setq frame-title-format "emacs")

;Disable menu-bar
(menu-bar-mode -1)

;Disable tool-bar
(tool-bar-mode -1)

;Disable scroll-bar
(scroll-bar-mode -1)

;Change cursor-type
(set-default 'cursor-type
             'hbar)

;Disable 3D on mode line
(set-face-attribute 'mode-line nil :box nil)

; typing over highlighted region will replace it
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;Enable column-number mode
(column-number-mode)

;Enable show-paren-mode
(show-paren-mode)

;Disable highlighting on current line
(global-hl-line-mode -1)

;Enable winner-mode
(winner-mode t)

;Enable windmove
(windmove-default-keybindings)

; no annoying beeps 
(setq echo-keystrokes 0.1
      use-dialog-box nil 
      visible-bell t)  
