# vulnerable

```
updatedep vulnerable [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities
 
###
Detect dependencies with vulnerabilities.

###
For each dependency, explicit and implicit, run a vulnerability scan and display known security vulnerabilities. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md) and [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md).
