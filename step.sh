#!/bin/bash

echo "==> Starting Monkop Android Test"

##### VALIDATIONS #####

# APK
if [ ! -f "${apk_path}" ] ; then
  echo "## ERROR"
  echo "** No apk found to test. The specified path was: ${apk_path}"
  echo "*  Terminating..."
  envman add --key "MONKOP_TEST_STATUS" --value "ERROR: Wrong Apk path"
  exit 1
fi

# MONKOP API KEY
if [ -z "${api_key}" ] ; then
  echo "## ERROR"
  echo "** No Api Key provided as environment variable"
  echo "*  Terminating..."
  envman add --key "MONKOP_TEST_STATUS" --value "ERROR: Missing Api Key"
  exit 1
fi

######################

# Get monkop-cli with curl
curl http://static.monkop.com/setup/cli/monkop-cli.py -o monkop-cli.py

# Upload apk to Monkop, you will receive an e-mail with the results
python monkop-cli.py -k ${api_key} -a ${apk_path}

envman add --key "MONKOP_TEST_STATUS" --value "OK"

echo "==> End."

exit 0
