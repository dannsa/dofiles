(defvar configuration/my-keyboard-bindings 
  '(("C-c C-l" . linum-mode)
    ("M-/" . undo-tree-visualize)
    ("M-<down>" . configuration/move-line-down)
    ("M-<up>" . configuration/move-line-up)
    ("C-=" . configuration/eval-and-replace)
    ("C-S-<up>" . buf-move-up)
    ("C-S-<down>" . buf-move-down)
    ("C-S-<left>" . buf-move-left)
    ("C-S-<right>" . buf-move-right)
    ("<f4>" . eval-buffer)
    ("<f5>" . configuration/reload-current-file)
    ("<f6>" . proxy-toggle)
    ))

(mapc 'configuration/apply-keyboard-bindings
      configuration/my-keyboard-bindings)
