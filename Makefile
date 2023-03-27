SHELL:=/bin/sh

lint: 
	flake8 --exclude=venv --statistics
test: 
	pytest -v --cov=calculator