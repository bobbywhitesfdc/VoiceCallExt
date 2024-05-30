#!/bin/bash
# Exit on error!
set -euxo pipefail

function prop {
    grep "${1}" project.properties|cut -d'=' -f2
}
#create scratch org
sfdx force:org:create -f config/project-scratch-def.json -s -a VOICEEXT username="$(prop 'user.admin' )" --durationdays 28
