README.md: guessinggame.sh
	@echo "Generating README.md..."
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Lines of Code: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "GitHub Repository: $(shell git config --get remote.origin.url)" >> README.md
	@echo "GitHub Pages: https://<your-github-username>.github.io/<repo-name>" >> README.md

.PHONY: all
all: README.md
