# maximum-semantic

```
updatedep maximum-semantic [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities\
-s, --skipTests\
-d=\<groupId:artifactId>, --dependency=\<groupId:artifactId>

###
Detect the highest major and minor dependency versions without breaking changes and minimal vulnerabilities.

###
For each explicit dependency, find the first non-breaking version, going from highest version to lowest. Find the highest for the major version, the minor version and the patch version. For example, if current version is 1.1.1, the highest patch version might be 1.1.9, the highest minor version might be 1.7.3, and the highest major version might be 3.1.2. Scan the highest non-breaking version for vulnerabilities for additional information. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md). Make sure the project builds on the command line, not just in your IDE.

