#!/bin/bash

rm -rf dist/*

source /Users/qipenghui/.venv/research/bin/activate
python -m build

#推送到pip官方仓库
#twine upload dist/*

#推送到coding私人仓库
twine upload -r coding-pypi dist/*

#twine upload -u <username> -p <password> -r <repo name> --repository-url <artifactory 地址> dist/*