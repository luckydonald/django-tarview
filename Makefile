test:
	flake8 tarview --ignore=E501
	coverage run --branch --source=tarview `which django-admin.py` test --settings=tarview.test_settings tarview
	coverage report --omit=tarview/test*

.PHONY: test
