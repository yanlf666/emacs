

;; elpa.el

;;elpa插件包安装地址
(require 'package)

(setq package-archives '(
		;;	("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                       	("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
		;;	("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
		;;	("org" . "http://mirrors.ustc.edu.cn/elpa/org/")
			))

(package-initialize)

;; 没有use-package 自动安装
(unless (package-installed-p 'use-package) 
  (package-refresh-contents)
  (package-install 'use-package))

;;(when (not (package-installed-p 'use-package))
;;  (package-refresh-contents)
;;  (package-install 'use-package))

;;(setq use-package-always-ensure t) ;;不用每个包都手动添加:ensure t关键字 
;;(setq use-package-always-defer t) ;;默认都是延迟加载，不用每个包都手动添加:defer t 

(use-package company
  :ensure t
  :defer t
  :config
  (setq 


        company-minimum-prefix-length 1 
        company-show-numbers t
	
        
        company-idle-delay 0.1
	;; 减少弹窗延迟
        company-echo-delay 0.1
	
	
	)
  
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-c-headers
  :ensure t
  :after (company)
  :defer t
  :init
  (add-to-list 'company-backends 'company-c-headers))

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package bing-dict
  :ensure t
  :defer t
  :init
  (global-set-key (kbd "C-c d") 'bing-dict-brief))

(use-package neotree
  :ensure t
  :defer t
  :init
  (global-set-key [f8] 'neotree-toggle))

;;(use-package helm
;;  :ensure t
;;  :defer t
  
  ;;:load-path "/home/y/y-emacs/emacs-config/helm.el"
;;  :init
;;  (global-set-key (kbd "M-x") 'helm-M-x)
;;  (global-set-key (kbd "C-x C-f") 'helm-find-files))



(use-package smartparens
  :ensure t
  :defer t
  :config
  :init
  (show-smartparens-global-mode +1)
  (smartparens-global-mode 1)
  (sp-with-modes '(c-mode c++-mode)
    (sp-local-pair "<" ">")
    (sp-local-pair "{" nil :post-handlers '(("||\n[i]" "RET")))
    (sp-local-pair "/*" "*/" :post-handlers '((" | " "SPC")
					      ("* ||\n[i]" "RET")))))




(provide 'elpa)
