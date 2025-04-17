# old

```
updatedep old [options] [pom.xml|build.gradle path]
```

###
Options:\
-i, --ignoreLowVulnerabilities

###
Identify dependencies that haven’t had a release in over 3 years.

###
For each explicit dependency, determine the release date of the highest version, then check if the dependency was released more than **3** years ago. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md), [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md).
