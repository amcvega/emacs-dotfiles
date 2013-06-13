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

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session


(setq eshell-path-env (concat "./cabal-dev/bin" ":" "$HOME/.cabal/bin" ":" eshell-path-env))
(setq exec-path (append exec-path '("/home/amcvega/.cabal/bin")))

(setenv "PATH" (concat "./cabal-dev/bin" ":" (getenv "PATH")))

(add-to-list 'grep-find-ignored-directories ".gs" t)

(require 'switch-window)

(require 'mote-mode)
(require 'revive+) ; may be optional

(require 'hamlet-mode)
;; (setq revive-plus:all-frames t)
(revive-plus:demo)
;; (require 'workgroups)
;; (setq wg-prefix-key (kbd "C-c w"))
;; (workgroups-mode 1)

;; (wg-load "/home/amcvega/.workgroups")

(add-to-list 'auto-mode-alist '("[.]mote$" . mote-mode))


(provide 'amcvega)

;;; amcvega ends here
