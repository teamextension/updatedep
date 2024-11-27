# UpdateDep


![GitHub Release](https://img.shields.io/github/v/release/teamextension/updatedep)




UpdateDep is an application that analyzes the dependencies of a project, this helps check what dependency versions can be used with less to no vulnerabilities.



---

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [FAQ](#faq)
---

## Features
- Helps manage Maven and Gradle dependency versions
- Automates the time-consuming process of looking for the best (latest, non-breaking, non-vulnerable) dependency version
- Supports Mac and Windows
---
## Prerequisites
* Java 11
* Apache Maven 3.8.4+
---
## Installation


### Using Brew (Mac)
Tap the repo
```
brew tap teamextension/updatedep
```
Install
```
brew install updatedep
```
###
### Using Chocolatey (Windows)
Install
```
choco install updatedep
```
###
### Manual installation
Download UpdateDep via [GitHub releases](https://github.com/teamextension/updatedep/releases)

---

## Usage
```
updatedep <action> [options] [pom.xml|build.gradle path]
```
### Actions available:

| Action                   | Description                                                                                                                                                    |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| vulnerable               | Detect dependencies with vulnerabilities.                                                                                                                      |
| new-vulnerable           | Detect new dependencies with vulnerabilities, compared to the previous run.                                                                                    |
| latest                   | Print the latest dependency versions.                                                                                                                          |
| check-latest             | Check if the project builds and has no breaking changes when using the latest dependency versions.                                                             |
| minimum                  | Detect the minimum dependency versions needed to remove vulnerabilities, without breaking changes.                                                             |
| maximum                  | Detect the highest dependency versions without vulnerabilities and breaking changes.                                                                           |
| maximum-update           | Detect the highest dependency versions without vulnerabilities and breaking changes (the same logic with maximum), and updates the build file.                 |
| maximum-semantic         | Detect the highest major and minor dependency versions without vulnerabilities and breaking changes.                                                           |
| old                      | Detect dependencies whose last release is more than 3 years ago.                                                                                               |
| not-maintained           | Detect dependencies whose last release is more than 5 years ago.                                                                                               |
| bleeding-edge            | Detect dependencies with versions that were released less than a month ago.                                                                                    |
| runtime                  | Detect dependencies that can be marked as runtime.                                                                                                             |
| unused                   | Detect dependencies that are unused and can removed.                                                                                                           |
| explicit-can-be-implicit | Detect unnecessary explicit dependencies since they are already implicit dependencies.                                                                         |
| implicit-can-be-explicit | Detect implicit dependencies with vulnerabilities that can be replaced with non-vulnerable explicit dependencies.                                              |
| implicit-can-be-excluded | Detect implicit dependencies with vulnerabilities that can be excluded to remove the vulnerability.                                                            |
| license                  | Print dependency licenses, and list restrictive licenses like GNU General Public License (GPL) and Affero General Public License (AGPL).                       |
| download-cve             | Downloads the latest National Vulnerability Database (NVD) Common Vulnerabilities and Exposures (CVE) data feed. This could take a few hours for new installs. |
| upgrade                  | Upgrade UpdateDep to the latest version.                                                                                                                       |
| whitelist                | Whitelisted dependencies will not be upgraded, or checked for vulnerabilities, or flagged as unused.                                                           |
| blacklist                | Blacklisted dependencies will be printed out when detected, and skipped when looking for newer versions.                                                       |
| excludes                 | Dependencies with versions specified in excludes.txt will be skipped.                                                                                          |
| log-out                  | Log out currently logged-in user.                                                                                                                              |
####
> ### Options
> | Option                                                       | Description                              |
> |--------------------------------------------------------------|------------------------------------------|
> | -i, --ignoreLowVulnerabilities                               | Ignore low vulnerabilities.              |      
> | -s, --skipTests                                              | Skip running unit and integration tests. |
> | -d=\<groupId:artifactId>, --dependency=\<groupId:artifactId> | Limit action to the given dependency.    |
>
---
## Support
### For inquiries feel free to contact [us.](https://www.teamextension.com/contact/)

---
## FAQ
> ###### Q: Exception in thread "main" java.lang.UnsupportedClassVersionError: com/teamextension/updatedep/UpdateDepApplicationKt has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime
> #### A: updatedep requires Java 11+

####
> ###### Q: I encounter errors when running Maven actions
> #### A: Set the MAVEN_HOME path variable

####
> ###### Q: I have an old java version as my default.
> #### A: @echo off "~\Java\jdk-11.0.14\bin\java" -jar "C:\Program Files\updatedep\updatedep.jar" %*

####
> ###### Q: It seems there was a large increase of disk space usage upon using the app
> #### A: Delete the dctemp folders under (Mac) /System/Volumes/Data/private/var/folders/df/rq4tg8992bbc56vyrppp02x00000gn/T or (Windows) ~\AppData\Local\Temp
