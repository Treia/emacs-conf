(use-package avy)

(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-indexing-method 'alien
	projectile-cache-file (concat treia/cache-dir "projectile.cache")
	projectile-completion-system 'ivy
	projectile-enable-caching t
	projectile-globally-ignored-file-suffixes '(".elc" ".pyc" ".o" ".class")
	projectile-known-project (concat treia/cache-dir "projectile.projects")
        projectile-require-project-root t
	projectile-switch-project-action 'projectile-file-file))
