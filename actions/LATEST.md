# latest

```
updatedep latest [options] [pom.xml|build.gradle path]
```
###
Options:\
-i, --ignoreLowVulnerabilities

###
Display the latest dependency versions.

###
For each explicit dependency, determine the latest version, then compare the current version with the latest version. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md).
