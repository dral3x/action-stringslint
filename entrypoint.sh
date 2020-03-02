#!/bin/bash

# convert stringslint's output into GitHub Actions Logging commands
# https://help.github.com/en/github/automating-your-workflow-with-github-actions/development-tools-for-github-actions#logging-commands

function stripPWD() {
    sed -E "s/$(pwd|sed 's/\//\\\//g')\///"
}

function convertToGitHubActionsLoggingCommands() {
    sed -E 's/^(.*):([0-9]+): (warning|error|[^:]+): (.*)/::\3 file=\1,line=\2::\4/'
}

set -o pipefail && stringslint "$@" -- | stripPWD | convertToGitHubActionsLoggingCommands
