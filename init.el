(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1) 

(require 'package)
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))
(package-initialize)


;; TODO: Add font changes
;; TODO: Add windmove-intuitively
;; TODO: Add packages automatic installer thingy
;; TODO: Disable the automatic file finder thing
;; TODO: Remove trailing whitespace when saving

;; Maaaaaaaaagit
(require 'magit)
(global-set-key (kbd "<f9>") 'magit-status)

;; ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(grep-command "grep --color=auto -rin ")
 '(grep-find-command
   (quote
    ("find . -type f -exec grep --color=auto -rin  /dev/null \\{\\} +" . 45)))
 '(grep-use-null-device nil)
 '(grep-use-null-filename-separator nil)
 '(tramp-use-ssh-controlmaster-options nil nil (tramp))
 '(tramp-verbose 6 nil (tramp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
