#!/bin/bash

set -a

source $WD/bin/common.sh
source $WD/bin/propertiesCICD.sh

ARGUMENTS=(authToken extensionJsonFile env)

inputs "$@"
if [ "$?" -gt 0 ]
then
	exit $?
fi

$WD/bin/updateExtensions.sh extensionJson=$extensionJsonFile env=$env
