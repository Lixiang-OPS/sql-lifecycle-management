.PHONY: install install-pre-commit test style check

install:
	pip3.8 install -e .

install-pre-commit:
	pre-commit install

test:
	PYTHONPATH=. pytest

style:
	pre-commit run --all-files

check: style test