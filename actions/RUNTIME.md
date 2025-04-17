# runtime

```
updatedep runtime [options] [pom.xml|build.gradle path]
```

###
Options:\
-s, --skipTests

###
Detect dependencies that can be marked as runtime.

###
For each explicit non-runtime dependency, if it is also implicit, change the scope to runtime and run the build. If the build is successful, the dependency can be classified as runtime. Uses [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md). Make sure the project builds on the command line, not just in your IDE.
