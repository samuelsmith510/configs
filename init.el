(package-initialize)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(line-number-mode 1)
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen 1)

; first, declare repositories
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

;; Init the package facility
(require 'package)
(package-initialize)
(package-refresh-contents)

;; Declare packages
(setq my-packages
      '(magit
	smex
        json-mode))

;; Iterate on packages and install missing ones
(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; Font size and preference
(set-frame-font "Source Code Pro 16" nil t)

;; Remove trailing whitespace when saving
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

;; Add windmove-intuitively
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
;; Fix for org mode conflict
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)



;; TODO: Disable the automatic file finder thing
;; TODO: Add more hotkeys for rgrep, C-u M-x shell, etc.
;; TODO: Get a good go-to-definition install


;; Maaaaaaaaagit
(require 'magit)


;; Quality of Life
(global-set-key (kbd "<f1>")
 (lambda () (interactive)
   (let ((current-prefix-arg 4))
     (call-interactively #'shell))))
(global-set-key (kbd "<f2>") 'find-name-dired)
(global-set-key (kbd "<f6>") 'compile)
(global-set-key (kbd "<f5>") 'rgrep)
(global-set-key (kbd "<f9>") 'magit-status)

;; ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;; Don't ever stop
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-z"))

;; Passwords
(setq password-cache-expiry nil)

;; SMEX - package for ido-style completions for M-x commands
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; Disable stupid beeps
(setq ring-bell-function 'ignore)

;; Column width
(setq-default fill-column 80)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (smex magit json-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
