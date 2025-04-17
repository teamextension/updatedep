# implicit-can-be-excluded

```
updatedep implicit-can-be-excluded [options] [pom.xml|build.gradle path]
```

###
Options:\
-s, --skipTests

###
Detect implicit dependencies with vulnerabilities that can be excluded to remove the vulnerability.

###
For each implicit only dependency with a vulnerability, exclude from the parent dependency and run a build. Suggests excluding the implicit dependency if the exclusion does not break the build. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md) and [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md). Make sure the project builds on the command line, not just in your IDE.
