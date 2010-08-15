(global-set-key (kbd "s-<left>") 'next-buffer)
(global-set-key (kbd "s-<right>") 'previous-buffer)
(global-set-key (kbd "s-<up>") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "s-<down>") (lambda () (interactive) (other-window 1)))

(provide 'bindings)