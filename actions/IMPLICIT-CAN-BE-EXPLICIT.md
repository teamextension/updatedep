# implicit-can-be-explicit

```
updatedep implicit-can-be-explicit [options] [pom.xml|build.gradle path]
```
###
Options:\
-s, --skipTests

###
Detect implicit dependencies with vulnerabilities that can be replaced with non-vulnerable explicit dependencies.

###
For each implicit dependency with a vulnerability, look for a higher version with no vulnerability, make that explicit and run a build. Suggest the explicit non-breaking dependency if found. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md). Make sure the project builds on the command line, not just in your IDE.
