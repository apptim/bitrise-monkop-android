#!/bin/bash
curl http://static.monkop.com/setup/cli/monkop-cli.py -o monkop-cli.py
python monkop-cli.py -k ${API_KEY} -a ${APK_PATH}
