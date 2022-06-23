install:
	pipenv install --dev

shell: install
	pipenv shell

test: install
	pipenv run molecule test