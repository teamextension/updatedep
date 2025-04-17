# unused

```
updatedep unused [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities\
-s, --skipTests

###
Detect dependencies that are unused and can be removed.

###
For each explicit dependency that is also not an implicit dependency, remove the explicit dependency and run a build. A successful build means the removed dependency is likely unused, and needs further investigation. For each unused dependency, run a vulnerability scan and display vulnerabilities that will be resolved if the dependency is removed. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md) and [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md). Make sure the project builds on the command line, not just in your IDE.
