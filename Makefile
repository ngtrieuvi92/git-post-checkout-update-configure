bootstrap:
		@echo "Boostraping project"
		cp git_hooks/post-checkout .git/hooks/post-checkout
		chmod +x .git/hooks/post-checkout
		yarn install
		@echo "Boostrap project completed"
dev-up: 
		npm start
