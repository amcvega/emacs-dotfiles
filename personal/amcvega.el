(add-to-list 'custom-theme-load-path "/home/amcvega/.emacs.d/themes/")
(load-theme 'blackboard t)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)


(global-linum-mode t)

(add-hook 'haskell-mode-hook '(lambda () (flymake-mode)))
(setq temporary-file-directory "~/.emacs.d/tmp/")


(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))
;;; (add-hook 'haskell-mode-hook 'haskell-indent-mode)

(add-hook 'term-mode-hook (lambda()
                            (yas-minor-mode -1)))

(setq eshell-path-env (concat "$HOME/.cabal/bin" ":" eshell-path-env))
(setq exec-path (append exec-path '("/home/amcvega/.cabal/bin")))


(require 'switch-window)

;; (require 'workgroups)
;; (setq wg-prefix-key (kbd "C-c w"))
;; (workgroups-mode 1)

;; (wg-load "/home/amcvega/.workgroups")


(provide 'amcvega)

;;; amcvega ends here
