#!/bin/bash

cd ~

rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/src/app/plugins/modules/workflow-pn

cp -a Documents/workspace/microting/eform-angular-frontend/eform-client/src/app/plugins/modules/workflow-pn Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/src/app/plugins/modules/workflow-pn

rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eFormAPI/Plugins/Workflow.Pn

cp -a Documents/workspace/microting/eform-angular-frontend/eFormAPI/Plugins/Workflow.Pn Documents/workspace/microting/eform-angular-workflow-plugin/eFormAPI/Plugins/Workflow.Pn

# Test files rm
rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Tests/workflow-settings/
rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Tests/workflow-general/
rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/wdio-headless-plugin-step2.conf.js
rm -fR Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Page\ objects/Workflow

# Test files cp
cp -a Documents/workspace/microting/eform-angular-frontend/eform-client/e2e/Tests/workflow-settings Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Tests/workflow-settings
cp -a Documents/workspace/microting/eform-angular-frontend/eform-client/e2e/Tests/workflow-general Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Tests/workflow-general
cp -a Documents/workspace/microting/eform-angular-frontend/eform-client/wdio-plugin-step2.conf.js Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/wdio-headless-plugin-step2.conf.js
cp -a Documents/workspace/microting/eform-angular-frontend/eform-client/e2e/Page\ objects/Workflow Documents/workspace/microting/eform-angular-workflow-plugin/eform-client/e2e/Page\ objects/Workflow
