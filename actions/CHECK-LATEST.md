# check-latest

```
updatedep check-latest [options] [pom.xml|build.gradle path]
```

###
 Options:\
 -s, --skipTests

###
Check if the project builds and has no breaking changes when using the latest dependency versions.

###
For each explicit dependency, perform a build using the latest version. The build will help determine if using the latest version is breaking or not. Uses [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md) and [exclude.txt](https://github.com/teamextension/updatedep/blob/main/actions/EXCLUDE.md). Make sure the project builds on the command line, not just in your IDE.
