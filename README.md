# UpdateDep


![GitHub Release](https://img.shields.io/github/v/release/teamextension/updatedep)



UpdateDep helps manage Maven and Gradle dependency versions. Automates the time-consuming process of looking for the best (latest, non-breaking, non-vulnerable) dependency version.

Uses pom.xml or build.gradle in the current directory if not specified. Processing time depends on build time and number of dependencies. Automated breaking change detection depends on project test coverage. Projects with minimal test coverage will have to be manually tested for breaking changes.

Only run on projects you trust. Check that your project builds, that it has no uncommitted changes, and backup before running. Make sure the project builds on the command line, not just in your IDE.

UpdateDep helps manage project dependencies by identifying optimal, non-breaking, and secure versions. Its analysis is best-effort and may include inaccuracies. Users should verify all suggested changes. By using UpdateDep, you accept it is provided "AS IS" without warranties of accuracy, reliability, or fitness for a purpose. The developers assume no liability for issues or damages. Users are responsible for maintaining project functionality and security when applying updates.

---

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Upgrade](#upgrade)
- [Usage](#usage)
- [Support](#support)
- [FAQ](#faq)
---

## Features
- Helps manage Maven and Gradle dependency versions
- Supports Mac and Windows
- Looks for vulnerable dependencies using the National Vulnerability Database(NVD).
- Checks if the latest dependency versions break your project build.
- Discovers the maximum, non-breaking dependency versions. This will take time since it will build your project, run your unit tests to try and find non-vulnerable dependency versions that does not break your build.
- Discovers the minimum, non-breaking dependency versions. This will take time since it will build your project, run your unit tests to try and find non-vulnerable dependency versions that does not break your build.
- Discovers the maximum, non-breaking dependency versions per major version. This will take time since it will run the discovery process against every major version.
- Looks for old, unmaintained, or bleeding edge dependencies.
- Discovers explicit dependencies that are unused, runtime, or can be made implicit.
- Discovers implicit dependencies that can be excluded or made explicit to remove vulnerabilities.
- Prints dependency licenses and flags restrictive licenses like GPL and AGPL.
---
## Prerequisites
* Java 11
* Apache Maven 3.8.4+
---
## Installation

### Install Using Chocolatey

1. **Open Command Prompt as Administrator**:  
   Right-click on the Start button, and select **Command Prompt (Admin)** or **Windows Terminal (Admin)**.

2. **Execute the Installation Command**:
   ```
   choco install updatedep
   ```

### Install Using Homebrew
1. **Open Terminal**:
   Use the Terminal app on macOS or Linux.

2. **Tap the Repository**:
   ```
   brew tap teamextension/updatedep
   ```
3. **Install the Package**:
    ```
   brew install updatedep
   ```
### Manual Installation

1. **Download UpdateDep**:  
   Visit the [UpdateDep GitHub Releases Page](https://github.com/teamextension/updatedep/releases) to download the latest version of `UpdateDep`.
2. Save in the same path of updatedep.jar the updatedep.bat file for Windows and updatedep.sh script for Mac.
---
### Setting the NVD API key
This application is utilizing the Owasp dependency-check. And it is highly encouraged to obtain an NVD API Key. Setting the NVD API key will make the dependency scanning much faster.
1. Generate the NVD API using https://nvd.nist.gov/developers/request-an-api-key
2. Save a copy of the NVD API key as this will only be shown once.
3. In the **~/.ud** path add an **updatedep.yaml** file with contents below.
   #### updatedep.yaml
   ```
   owasp:
     nvd:
       api_key: <nvd-api-key>
   ```
---
## Upgrade

### Upgrade Using Chocolatey

1. **Open Command Prompt as Administrator**:  
   Right-click on the Start button, and select **Command Prompt (Admin)** or **Windows Terminal (Admin)**.

2. **Execute the Upgrade Command**:
    ```
   choco upgrade updatedep
   ```

### Upgrade Using Homebrew

1. **Open Terminal**:  
   Use the **Terminal** app on macOS or Linux.

2. **Execute the Upgrade Command**:
    ```
   brew upgrade updatedep
   ```
### Upgrade Using the Upgrade Action
1. **Open Terminal or Command Prompt**:  
   Use the **Terminal** app on macOS/Linux or **Command Prompt** on Windows.
2. **Execute the Upgrade Command**:
    ```
   updatedep upgrade
   ```
### Note: For manual installed, run upgrade in the current working directory of the updatedep.jar file.
---

## Usage
### IMPORTANT: Make sure the project builds on the command line, not just in your IDE, before using UpdateDep.
```
updatedep <action> [options] [pom.xml|build.gradle path]
```
### Actions available:

| Action                                                                                                                | Description                                                                                                                                                    |
|-----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [vulnerable](https://github.com/teamextension/updatedep/blob/main/actions/VULNERABLE.md)                              | Detect dependencies with vulnerabilities.                                                                                                                      |
| [new-vulnerable](https://github.com/teamextension/updatedep/blob/main/actions/NEW-VULNERABLE.md)                      | Detect new dependencies with vulnerabilities, compared to the previous run.                                                                                    |
| [latest](https://github.com/teamextension/updatedep/blob/main/actions/LATEST.md)                                      | Print the latest dependency versions.                                                                                                                          |
| [check-latest](https://github.com/teamextension/updatedep/blob/main/actions/CHECK-LATEST.md)                          | Check if the project builds and has no breaking changes when using the latest dependency versions.                                                             |
| [minimum](https://github.com/teamextension/updatedep/blob/main/actions/MINIMUM.md)                                    | Detect the minimum dependency versions needed to remove vulnerabilities, without breaking changes.                                                             |
| [maximum](https://github.com/teamextension/updatedep/blob/main/actions/MAXIMUM.md)                                    | Detect the highest dependency versions without vulnerabilities and breaking changes.                                                                           |
| [maximum-update](https://github.com/teamextension/updatedep/blob/main/actions/MAXIMUM-UPDATE.md)                      | Detect the highest dependency versions without vulnerabilities and breaking changes (the same logic with maximum), and updates the build file.                 |
| [maximum-semantic](https://github.com/teamextension/updatedep/blob/main/actions/MAXIMUM-SEMANTIC.md)                  | Detect the highest major and minor dependency versions without vulnerabilities and breaking changes.                                                           |
| [old](https://github.com/teamextension/updatedep/blob/main/actions/OLD.md)                                            | Detect dependencies whose last release is more than 3 years ago.                                                                                               |
| [not-maintained](https://github.com/teamextension/updatedep/blob/main/actions/NOT-MAINTAINED.md)                      | Detect dependencies whose last release is more than 5 years ago.                                                                                               |
| [bleeding-edge](https://github.com/teamextension/updatedep/blob/main/actions/BLEEDING-EDGE.md)                        | Detect dependencies with versions that were released less than a month ago.                                                                                    |
| [parent](https://github.com/teamextension/updatedep/blob/main/actions/PARENT.md)                                      | Find the top level explicit dependency of an implicit dependency.                                                                                              |
| [runtime](https://github.com/teamextension/updatedep/blob/main/actions/RUNTIME.md)                                    | Detect dependencies that can be marked as runtime.                                                                                                             |
| [unused](https://github.com/teamextension/updatedep/blob/main/actions/UNUSED.md)                                      | Detect dependencies that are unused and can removed.                                                                                                           |
| [explicit-can-be-implicit](https://github.com/teamextension/updatedep/blob/main/actions/EXPLICIT-CAN-BE-IMPLICIT.md)  | Detect unnecessary explicit dependencies since they are already implicit dependencies.                                                                         |
| [implicit-can-be-explicit](https://github.com/teamextension/updatedep/blob/main/actions/IMPLICIT-CAN-BE-EXPLICITT.md) | Detect implicit dependencies with vulnerabilities that can be replaced with non-vulnerable explicit dependencies.                                              |
| [implicit-can-be-excluded](https://github.com/teamextension/updatedep/blob/main/actions/IMPLICIT-CAN-BE-EXCLUDED.md)  | Detect implicit dependencies with vulnerabilities that can be excluded to remove the vulnerability.                                                            |
| [license](https://github.com/teamextension/updatedep/blob/main/actions/LICENSE.md)                                    | Print dependency licenses, and list restrictive licenses like GNU General Public License (GPL) and Affero General Public License (AGPL).                       |
| [suggest-tests](https://github.com/teamextension/updatedep/blob/main/actions/SUGGEST-TESTS.md)                        | Display AI suggested tests for a given dependency.                                                                                                             |
| [download-cve](https://github.com/teamextension/updatedep/blob/main/actions/DOWNLOAD-CVE.md)                          | Downloads the latest National Vulnerability Database (NVD) Common Vulnerabilities and Exposures (CVE) data feed. This could take a few hours for new installs. |
| upgrade                                   | Upgrade UpdateDep to the latest version.                                                                                                                       |
| [whitelist](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md)                                | Whitelisted dependencies will not be upgraded, or checked for vulnerabilities, or flagged as unused.                                                           |
| [blacklist](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md)                                | Blacklisted dependencies will be printed out when detected, and skipped when looking for newer versions.                                                       |
| [exclude](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md)                                    | Dependencies with versions specified in exclude.txt will be skipped.                                                                                           |
| log-out                                  | Log out currently logged-in user.                                                                                                                              |
####
> ### Options
> | Option                                                       | Description                              | Sample                                              |
> |--------------------------------------------------------------|------------------------------------------|-----------------------------------------------------|
> | -i, --ignoreLowVulnerabilities                               | Ignore low vulnerabilities.              | updatedep vulnerable -i path-to-build-file          |      
> | -s, --skipTests                                              | Skip running unit and integration tests. | updatedep unused -s path-to-build-file              |
> | -d=\<groupId:artifactId>, --dependency=\<groupId:artifactId> | Limit action to the given dependency.    | updatedep minimum -d=log4j:log4j path-to-build-file |

---
## Support
### For inquiries feel free to contact us at support@teamextension.com.

---
## FAQ

### 1. Why am I seeing this error "UpdateDepApplicationKt has been compiled by a more recent version of the Java Runtime"?
    Exception in thread "main" java.lang.UnsupportedClassVersionError: com/teamextension/updatedep/UpdateDepApplicationKt has been compiled by a more recent version of the Java Runtime (class file version 55.0)
####
UpdateDep requires Java 11 or higher. Please ensure you have the correct JAVA version installed.

###
### 2. I have multiple Java versions installed. How can I set the correct version for running the application?
####
To specify the Java version, edit the batch or script file for UpdateDep, located in the C:\Program Files\updatedep (for Windows) or /usr/local/Cellar/updatedep/<updatedep-version>/libexec (for Mac) or in the location where you manually added the batch file:
####
For Windows:

    @echo off "~\Java\jdk-11.0.14\bin\java" --add-opens java.base/sun.security.ssl=ALL-UNNAMED -jar "C:\Program Files\updatedep\updatedep.jar" %*
####
For Mac:

    "/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/bin/java" --add-opens java.base/sun.security.ssl=ALL-UNNAMED -jar "/usr/local/Cellar/updatedep/<updatedep version>/libexec/updatedep.jar" "$@"
###
### 3. Why is the application consuming so much disk space?
####
The application creates temporary files that may accumulate over time. You can safely delete the *dctemp* folders:
####
For Windows:

    ~\AppData\Local\Temp
####
For macOS:

    /System/Volumes/Data/private/var/folders/df/rq4tg8992bbc56vyrppp02x00000gn/T
###
### 4. What should I do if I encounter errors like these?
####
    [ERROR] Error updating the NVD Data
####
This error occurs when the OWASP Dependency Check engine cannot retrieve NVD data, often due to temporary unavailability of the NVD API. Please try running the application again after some time.
###
### 5. Does the application use any network ports?
####
Yes, the application uses ports 8081 to 8089 during login and log-out. It checks the availability of these ports and uses the next available one.
####
    login: Required during the first run of any action. 
####
    log-out: Used to log-out the user.
###
### 6.  What should I do if I encounter errors like this?
####
    Failed to update hosted suppressions file, results may contain false positives already resolved by the DependencyCheck project
####
This occurs due to internet issues you might be facing. Try to restart your device or connect to a much stable internet connection and retry.
___
