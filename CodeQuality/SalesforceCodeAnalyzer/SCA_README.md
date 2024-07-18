## How to use Salesforce Code Analyzer for Static Code Analysis?

Using @salesforce/sfdx-scanner plugin for Salesforce CLI

<hr>

## Need Node.js ver20.0 or Latest
Check Node.js version on terminal
```bash
node -v
```
Note: If Node.js version is below v20.0 then upgrade via Software Center

Steps to Upgrade:
1. Open Software Center App on your local machine
2. Search "Node.js"
3. Click on Node.js icon
4. Click Install
5. Now check Node.js version again

<hr>

## Need @salesforce/sfdx-scanner plugin for Salesforce CLI
Check for @salesforce/sfdx-scanner plugin on terminal
```bash
$ sf plugins --core
```
Output
```bash
@oclif/plugin-autocomplete 3.0.13 (core)
@oclif/plugin-commands 3.2.2 (core)
@oclif/plugin-help 6.0.20 (core)
@oclif/plugin-not-found 3.1.1 (core)
@oclif/plugin-plugins 5.0.5 (core)
@oclif/plugin-search 1.0.20 (core)
@oclif/plugin-update 4.2.3 (core)
@oclif/plugin-version 2.0.16 (core)
@oclif/plugin-warn-if-update-available 3.0.15 (core)
@oclif/plugin-which 3.1.7 (core)
@salesforce/cli 2.36.8 (core)
@salesforce/sfdx-scanner 4.2.0 (latest-beta)
apex 3.1.3 (core)
auth 3.5.1 (core)
data 3.2.4 (core)
deploy-retrieve 3.5.3 (core)
info 3.1.2 (core)
limits 3.2.1 (core)
marketplace 1.1.0 (core)
org 3.6.3 (core)
packaging 2.3.0 (core)
schema 3.2.0 (core)
settings 2.1.2 (core)
signups 2.1.2 (2.1.2)
sobject 1.2.1 (core)
telemetry 3.1.17 (core)
templates 56.1.0 (core)
trust 3.5.1 (core)
user 3.4.3 (core)

Uninstalled JIT Plugins:
community 3.1.0
custom-metadata 3.2.1
dev 2.2.0
devops-center 1.2.9
```
Note: If you don't see @salesforce/sfdx-scanner 4.2.0 (latest-beta) in your output then @salesforce/sfdx-scanner plugin must be installed.

Steps to Install Plugin:
1. Run below command on terminal
```bash
$ sf plugins install @salesforce/sfdx-scanner@v4.2.0
```
Output
```bash
Polling for new version to become available on npm... done
Successfully validated digital signature for @salesforce/sfdx-scanner.
Finished digital signature check.
removed 4 packages in 7s
@salesforce/cli: Installing plugin @salesforce/sfdx-scanner@v4.2.0... installed v4."2.0
```
2. Check if Plugin is installed
```bash
$ sf plugins --core
```
Note: You must see @salesforce/sfdx-scanner 4.2.0 (latest-beta) in the output.

<hr>

## Run Static Code Analysis on Staged files
Steps to perform:
1. Open bash in VSCode Terminal
2. Run below command
```bash
./code-scan/sca.sh
```
Output
```bash
Executed pmd, found 4 violation(s) across 1 file(s).
Executed eslint, found 1 violation(s) across 1 file(s).
Rule violations were written to code-scan/code-scan-report.html.
```
3. code-scan-report.html file will open automatically on default browser.

Note: You can also access the report file from folder, <i><b>code-scan/code-scan-report.html</b></i>