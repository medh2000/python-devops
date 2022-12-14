install:
	pip install --upgrade pip&&\
		pip install -r requirements.txt
format:
	#format code
	black *.py lib/*.py
lint:
	#flake8 or #pylint R= recommended C=config
	pylint --disable=R,C *.py lib/*.py
test:
	#test
	python -m pytest -vv --cov=lib test_logic.py
build:
	#build container
deploy:
	#deploy
all: install lint deploy