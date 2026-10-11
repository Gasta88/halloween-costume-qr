.PHONY: ci

ci:
	npm install --no-save html-validate
	npx html-validate index.html
