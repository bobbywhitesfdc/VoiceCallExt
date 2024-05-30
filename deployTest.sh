#!/bin/bash
# Exit on error!
set -euxo pipefail

function prop {
    grep "${1}" project.properties|cut -d'=' -f2
}
#create TARGET scratch org
sfdx force:org:create -f config/project-scratch-def.json -s -a TARGET username="$(prop 'target.admin' )" 

# deploy the package there
sf package install --package "VoiceCallFields" -o TARGET

