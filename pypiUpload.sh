#!/bin/bash

rm -rf build
rm -rf dist
python3 setup.py sdist bdist_wheel

# https://twine.readthedocs.io/en/stable/
python3 -m twine upload \
-u "__token__" \
-p "pypi-API_TOKEN" \
--repository-url https://upload.pypi.org/legacy/ dist/*