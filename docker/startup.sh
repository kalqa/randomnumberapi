#!/bin/sh

git clone -b to_deploy https://github.com/kalqa/randomnumberapi.git /home/randomnumberapi

python3 /home/randomnumberapi/api.py
