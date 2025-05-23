# maximum-update

```
updatedep maximum-update [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities\
-s, --skipTests\
-d=\<groupId:artifactId>, --dependency=\<groupId:artifactId>

###
Detect the highest dependency versions without breaking changes and minimal vulnerabilities, and updates the build file.

###
For each explicit dependency, find the first non-breaking version, going from highest version to lowest. Scan the highest non-breaking version for vulnerabilities for additional information. Update the build file to use the maximum versions, then generate the updatedep-changes.html output file. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md). Make sure the project builds on the command line, not just in your IDE.

