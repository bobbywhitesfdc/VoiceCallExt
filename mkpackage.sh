#!/bin/bash
# Exit on error!
set -euxo pipefail

#sf package create --name "VoiceCallFields" --path force-app --package-type Managed
sf package version create --package "VoiceCallFields" --code-coverage --installation-key-bypass --definition-file config/project-scratch-def.json --wait 10

