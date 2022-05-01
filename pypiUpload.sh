#!/bin/bash

rm -rf build
rm -rf dist
python3 setup.py sdist bdist_wheel

# https://twine.readthedocs.io/en/stable/

token=$(cat /Users/morpheous/Tresors/Misc/Personal/PyPiToken.txt)
python3 -m twine upload \
-u "__token__" \
-p "$token" \
--repository-url https://upload.pypi.org/legacy/ dist/*