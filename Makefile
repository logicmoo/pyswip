.PHONY: build clean cover test upload

build:
	python setup.py sdist
	python setup.py bdist_wheel --universal
	pip install -e .[dev] --break-system-packages

clean:
	rm -rf dist build pyswip.egg-info

cover:
	py.test --cov=pyswip tests

test:
	py.test tests --verbose

upload:
	twine upload dist/*
