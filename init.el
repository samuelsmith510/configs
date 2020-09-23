(setq default-frame-alist '((font . "Source Code Pro 16")))

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

;; Automatically turn on auto-fill mode for org
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;; TODO: Disable the automatic file finder thing

;; Maaaaaaaaagit
(require 'magit)


;; Quality of Life
(global-set-key (kbd "<f1>")
 (lambda () (interactive)
   (let ((current-prefix-arg 4))
     (call-interactively #'shell))))
(global-set-key (kbd "<f2>") 'find-name-dired)
(global-set-key (kbd "<f3>") 'org-store-link)
(global-set-key (kbd "<f4>") 'org-insert-link)
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
 '(grep-find-ignored-directories
   (quote
    ("testing" "test" "SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}")))
 '(grep-find-ignored-files
   (quote
    ("*Test.java" "*Test*" ".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo")))
 '(jdee-db-option-host "localhost")
 '(jdee-sourcepath
   (quote
    ("/home/user/Projects/oci-bitbucket/ffsw/ffsw-control-plane/api")))
 '(package-selected-packages (quote (smex magit json-mode)))
 '(safe-local-variable-values
   (quote
    ((whitespace-style face empty tabs lines-tail trailing)
     (whitespace-line-column . 100)
     (whitespace-mode t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
