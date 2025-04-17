# minimum

```
updatedep minimum [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities\
-s, --skipTests\
-d=\<groupId:artifactId>, --dependency=\<groupId:artifactId>

###
Detect the minimum dependency versions needed to remove vulnerabilities, without breaking changes.

###
For each explicit dependency, find the minimal version greater than the current version that builds and has no vulnerability. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md), and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md). Make sure the project builds on the command line, not just in your IDE.
